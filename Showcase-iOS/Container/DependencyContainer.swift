//
//  DependencyContainer.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/09.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import FirebaseAuth
import Swinject

class DependencyContainer {
    var container: Container? {
        let dependencyContainer = Container()
        dependencyContainer.register(LoginPresenterViewable.self) { r in
            let loginView: LoginVC = LoginVC.instantiate(fromAppStoryboard: .Login)
            let loginPresenter = LoginPresenter()
            let loginInteractor = LoginInteractor()
            let userAuthenticator = UserAuthentication(Auth.auth())
            loginInteractor.loginPresenter = loginPresenter
            loginInteractor.userAuthenticator = userAuthenticator
            loginPresenter.loginRouter = LoginRouter()
            loginPresenter.loginViewer = loginView
            loginPresenter.loginInteractor = loginInteractor
            loginView.loginPresenter = loginPresenter
            loginView.notificationCenter = NotificationCenter.default
            return loginView 
        }
        return dependencyContainer
    }
}
