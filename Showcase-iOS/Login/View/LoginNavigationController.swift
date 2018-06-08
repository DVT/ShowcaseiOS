//
//  LoginNavigationController.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/18.
//  Copyright © 2018 DVT. All rights reserved.
//

import UIKit

class LoginNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.initializeLoginView()
    }
    
    func initializeLoginView() {
        let loginViewController = self.viewControllers.first as? LoginViewController
        let dependencyContainer = DependencyContainer.container()
        var loginPresenter = dependencyContainer.resolve(LoginPresentable.self)
        loginPresenter?.loginViewer = loginViewController
        loginPresenter?.wireframe = dependencyContainer.resolve(WireframeDelegate.self)
        loginViewController?.loginPresenter = loginPresenter
        loginViewController?.sharedApplication = dependencyContainer.resolve(SharedApplicationDelegate.self)
    }
}
