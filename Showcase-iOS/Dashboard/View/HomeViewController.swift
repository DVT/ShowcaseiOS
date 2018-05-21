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
    
    func setupNavigationBar() {
        self.navigationController?.navigationBar.topItem?.title = "DVT Showcase"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = false
        searchController.delegate = self
        searchController.definesPresentationContext = true
        self.navigationController?.navigationBar.items?.first?.searchController = searchController
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
        return CGSize(width: collectionView.frame.width/3 - 1, height: collectionView.frame.height/3)
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
        guard let text = searchController.searchBar.text else {
            return
        }
        if text.count > 0 {
            self.filteredShowcaseAppsViewModels = self.showcaseAppsViewModels.filter {
                app in
                return (app.client?.lowercased().contains(text.lowercased()))!
            }
        } else {
            self.filteredShowcaseAppsViewModels = self.showcaseAppsViewModels
        }
        self.collectionView?.reloadData()
    }
}
