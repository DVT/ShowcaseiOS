//
//  TabBarViewController.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/14.
//  Copyright © 2018 DVT. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let dependencyContainer = DependencyContainer.container()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initViewControllers()
    }
    
    func initViewControllers() {
        let homeViewContoller = self.viewControllers?.first as! HomeViewController
        let homePresenter = dependencyContainer.resolve(HomePresentable.self) as! HomePresenter
        let firebaseStorage = dependencyContainer.resolve(FIRStoring.self)
        homeViewContoller.presenter = homePresenter
        homePresenter.homePresenterViewable = homeViewContoller
        homeViewContoller.firebaseStorage = firebaseStorage
        
        let contactUsContoller = self.viewControllers?.last as! ContactUsViewController
        let contactUsPresenter = dependencyContainer.resolve(ContactUsPresentable.self) as! ContactUsPresenter
        contactUsContoller.contactUsPresenter = contactUsPresenter
        contactUsPresenter.contactUsView = contactUsContoller
        contactUsContoller.firebaseStorage = firebaseStorage
        contactUsContoller.tabBarItem.title = "Contact Us"
    }
}

