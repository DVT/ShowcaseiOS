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
        var loginPresenter = DependencyContainer.container().resolve(LoginPresentable.self)
        loginPresenter?.loginViewer = loginViewController
        loginViewController?.loginPresenter = loginPresenter
        loginViewController?.sharedApplication = SharedApplicationDelegateImplementation()
    }
}
