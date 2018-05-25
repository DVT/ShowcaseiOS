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
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupNavigationBar()
        self.registerCollectionViewNib()
        self.presenter?.fetchShowcaseApps()
    }    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.searchController.delegate = self
        self.searchController.searchResultsUpdater = self
        self.navigationController?.navigationBar.items?.first?.searchController = searchController
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.setupNavigationBar()
    }
    
    func setupNavigationBar() {
        self.tabBarController?.navigationItem.title = "DVT Showcase"
    }
    
    func registerCollectionViewNib() {
        let nib = UINib(nibName: "ShowcaseAppCollectionViewCell", bundle: nil)
        self.collectionView?.register(nib, forCellWithReuseIdentifier: "ShowcaseAppViewIdentifier")
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
}

extension HomeViewController: HomePresenterViewable {
    
    func showOnSuccess(with showcaseApps: [ShowcaseAppViewModel]) {
        self.showcaseAppsViewModels = showcaseApps
        self.filteredShowcaseAppsViewModels = self.showcaseAppsViewModels
        self.collectionView?.reloadData()
    }
    
    func showOnFailure(with error: DatabaseError) {
        print("To present Error view here.")
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
