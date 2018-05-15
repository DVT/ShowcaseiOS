//
//  DependencyInjectionContainer.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/14.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import Swinject
import FirebaseDatabase
import FirebaseStorage

class DependencyInjection {
    var container: Container? {
        let injection = Container()
        injection.register(HomePresenterViewable.self) { r in
            let homeView = HomeViewController.instantiate(fromAppStoryboard: .Home)
            let homePresenter = HomePresenter()
            let databaseReference = Database.database().reference()
            let homeInteractor = HomeInteractor()
            homeInteractor.homePresenter = homePresenter
            homeInteractor.firebaseDatabaseReference = databaseReference
            homePresenter.homePresenterInteractable = homeInteractor
            homePresenter.homePresenterViewable = homeView
            homeView.presenter = homePresenter
            return homeView
        }
        return injection
    }
}
