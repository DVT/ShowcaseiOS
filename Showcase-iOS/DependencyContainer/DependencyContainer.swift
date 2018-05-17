//
//  DependencyContainer.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/16.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import FirebaseStorage
import FirebaseDatabase
import FirebaseAuth
import Swinject

struct DependencyContainer {
    static func container() -> Container {
        let container = Container()
        container.register(LoginPresenterViewable.self) { r in
            let loginViewController = LoginViewController.instantiate(fromAppStoryboard: .Login)
            let userAuthentication = UserAuthentication(Auth.auth())
            let loginInteractor = LoginInteractor()
            let loginPresenter = LoginPresenter()
            loginInteractor.userAuthenticator = userAuthentication
            loginInteractor.loginPresenter = loginPresenter
            loginPresenter.loginInteractor = loginInteractor
            loginPresenter.loginViewer = loginViewController
            loginViewController.loginPresenter = loginPresenter
            return loginViewController
        }
        
        container.register(HomePresenterViewable.self) { r in
            let homeViewController = HomeViewController()
            homeViewController.presenter = r.resolve(HomePresentable.self)
            homeViewController.firebaseStorage = Storage.storage()
            return homeViewController
        }
        
        container.register(FIRStoring.self) { r in
            return Storage.storage()
        }
        
        container.register(HomePresentable.self) {r in
            let homePresenter = HomePresenter()
            let homeInteractor = HomeInteractor()
            homeInteractor.firebaseDatabaseReference = Database.database().reference()
            homePresenter.homePresenterInteractable = homeInteractor
            homeInteractor.homePresenter = homePresenter
            return homePresenter
        }
        return container
    }
}
