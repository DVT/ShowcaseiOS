//
//  HomeViewController.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/14.
//  Copyright © 2018 DVT. All rights reserved.
//

import UIKit

class HomeViewController: UICollectionViewController {
    var presenter: HomePresentable?
    var showcaseAppsViewModels = [ShowcaseAppViewModel]()
    var filteredShowcaseAppsViewModels = [ShowcaseAppViewModel]()
    var firebaseStorage:FIRStoring?
    let searchController = UISearchController(searchResultsController: nil)
    var errorView: ErrorView?
    var loadingView: LoadingView?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.resolveInjectables()
        self.setupNavigationBar()
        self.registerCollectionViewNib()
        self.addLoadingAnimationView()
        self.presenter?.fetchShowcaseApps()
    }
    
    func resolveInjectables() {
        let dependencyContainer = DependencyContainer.container()
        let homePresenter = dependencyContainer.resolve(HomePresentable.self) as! HomePresenter
        let firebaseStorage = dependencyContainer.resolve(FIRStoring.self)
        self.presenter = homePresenter
        homePresenter.homePresenterViewable = self
        self.firebaseStorage = firebaseStorage
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.searchController.delegate = self
        self.searchController.searchResultsUpdater = self
        self.searchController.dimsBackgroundDuringPresentation = false
        self.navigationController?.navigationBar.items?.first?.searchController = searchController
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.setupNavigationBar()
    }
    
    func setupNavigationBar() {
        self.navigationItem.title = "DVT Showcase"
    }
    
    func registerCollectionViewNib() {
        let nib = UINib(nibName: "ShowcaseAppCollectionViewCell", bundle: nil)
        self.collectionView?.register(nib, forCellWithReuseIdentifier: "ShowcaseAppViewIdentifier")
    }
    
    func addLoadingAnimationView() {
        loadingView = LoadingView(frame: self.view.frame)
        loadingView?.isHidden = false
        self.view.addSubview(loadingView!)
    }
}

extension HomeViewController : UICollectionViewDelegateFlowLayout {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filteredShowcaseAppsViewModels.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ShowcaseAppViewIdentifier", for: indexPath) as! ShowcaseAppCollectionViewCell
        cell.firebaseStorage = firebaseStorage
        cell.populateCell(with: filteredShowcaseAppsViewModels[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width:collectionView.frame.size.width, height:50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/3 - 1, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section:Int) -> CGFloat {
        return 1.0
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let showcaseAppViewModel = self.filteredShowcaseAppsViewModels[indexPath.row]
        self.presenter?.transitionToShowcaseAppDetailView(with: showcaseAppViewModel)
    }
}

extension HomeViewController: HomePresenterViewable {
    func startLoadingAnimation() {
       loadingView?.isHidden = false
    }
    
    func stopLoadingAnimation() {
        loadingView?.isHidden = true
    }
    
    
    func showOnSuccess(with showcaseApps: [ShowcaseAppViewModel]) {
        self.showcaseAppsViewModels = showcaseApps
        self.filteredShowcaseAppsViewModels = self.showcaseAppsViewModels
        self.collectionView?.reloadData()
    }
    
    func showOnFailure(with error: DatabaseError) {
        errorView = ErrorView(frame: self.view.bounds)
        errorView?.message.text = error.localizedDescription
        errorView?.onActionButtonTouched = {[weak self] in
            self?.presenter?.fetchShowcaseApps()
            self?.errorView?.removeFromSuperview()
        }
        self.view.addSubviewPinnedToEdges(errorView!)
    }
}

extension HomeViewController: UISearchResultsUpdating, UISearchControllerDelegate {
   
    func updateSearchResults(for searchController: UISearchController) {
        guard let filteredShowcaseApps = self.presenter?.search(text: searchController.searchBar.text) else {
            return
        }
        self.filteredShowcaseAppsViewModels = filteredShowcaseApps
        self.collectionView?.reloadData()
    }
}
