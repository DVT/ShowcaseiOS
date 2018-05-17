//
//  TabBarViewController.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/14.
//  Copyright © 2018 DVT. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.initViewControllers()
    }
    
    func initViewControllers() {
        let dependencyContainer = DependencyContainer.container()
        let homeViewContoller = self.viewControllers?.first as! HomeViewController
        let homePresenter = dependencyContainer.resolve(HomePresentable.self) as! HomePresenter
        let firebaseStorage = dependencyContainer.resolve(FIRStoring.self)
        homeViewContoller.presenter = homePresenter
        homePresenter.homePresenterViewable = homeViewContoller
        homeViewContoller.firebaseStorage = firebaseStorage
    }
    
}

