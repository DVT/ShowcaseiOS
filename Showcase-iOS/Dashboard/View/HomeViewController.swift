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
    var showcaseAppsViewModels: [ShowcaseAppViewModel] = [ShowcaseAppViewModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.fetchShowcaseApps()
        self.mockFectchApps()
    }
    
    func mockFectchApps() {
        let showcaseViewModel = ShowcaseApp(with: self.setupShowcaseAppDictionary())
        showcaseAppsViewModels.append(ShowcaseAppViewModel(with: showcaseViewModel))
        showcaseAppsViewModels.append(ShowcaseAppViewModel(with: showcaseViewModel))
        showcaseAppsViewModels.append(ShowcaseAppViewModel(with: showcaseViewModel))
        showcaseAppsViewModels.append(ShowcaseAppViewModel(with: showcaseViewModel))
        showcaseAppsViewModels.append(ShowcaseAppViewModel(with: showcaseViewModel))
        showcaseAppsViewModels.append(ShowcaseAppViewModel(with: showcaseViewModel))
        self.collectionView?.reloadData()
    }
    
    func setupShowcaseAppDictionary() -> [String: Any] {
        var dictionary = [String: Any]()
        dictionary["client"] = "Group Five"
        dictionary["functionality"] = "Asset data capture on Windows Mobile devices."
        dictionary["iconUrl"] = "app-images/group-five/group_five_logo.jpg"
        dictionary["id"] = "group-five"
        dictionary["industry"] = "Asset Management"
        dictionary["shortDescription"] = "Asset data capturing application"
        dictionary["technologyUsed"] = "Windows Phone \n.NET Development "
        dictionary["screenshots"] = ["app-images/dvt-showcase/about.png", "app-images/dvt-showcase/app_detail_dstv.png"]
        return dictionary
    }
}

extension HomeViewController : UICollectionViewDelegateFlowLayout {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return showcaseAppsViewModels.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ShowcaseAppViewIdentifier", for: indexPath) as! ShowcaseAppCollectionViewCell
        cell.showcaseViewModel = showcaseAppsViewModels[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let side = collectionView.frame.width/3 - 1
        return CGSize(width: side, height: side)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section:Int) -> CGFloat {
        return 1.0
    }
}

extension HomeViewController: HomePresenterViewable {
    
    func showOnSuccess(with showcaseApps: [ShowcaseAppViewModel]) {
        self.showcaseAppsViewModels = showcaseApps
        self.collectionView?.reloadData()
    }
    
    func showOnFailure(with error: DatabaseError) {
        
    }
}
