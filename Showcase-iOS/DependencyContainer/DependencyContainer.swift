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
        
        container.register(LoginPresentable.self) { r in
            let userAuthentication = UserAuthentication(Auth.auth())
            let loginInteractor = LoginInteractor()
            let loginPresenter = LoginPresenter()
            loginInteractor.userAuthenticator = userAuthentication
            loginInteractor.loginPresenter = loginPresenter
            loginPresenter.loginInteractor = loginInteractor
            loginPresenter.userDefaults = r.resolve(UserDefaultsProtocol.self)
            return loginPresenter
        }
        
        container.register(HomePresenterViewable.self) { r in
            let homeViewController = HomeViewController()
            homeViewController.presenter = r.resolve(HomePresentable.self)
            homeViewController.firebaseStorage = r.resolve(FIRStoring.self)
            return homeViewController
        }
        
        container.register(UserDefaultsProtocol.self) { r in
            return UserDefaultsImplementation()
        }
        
        container.register(ContactUsPresenterViewable.self) { r in
            let contactUsController = ContactUsViewController()
            contactUsController.contactUsPresenter = r.resolve(ContactUsPresentable.self)
            contactUsController.firebaseStorage = r.resolve(FIRStoring.self)
            return contactUsController
        }
        
        container.register(FIRStoring.self) { r in
            return Storage.storage()
        }
        
        container.register(DataReferenceable.self) { r in
            return Database.database().reference()
        }
        
        container.register(WireframeDelegate.self) { r in
            return Wireframe()
        }
        
        container.register(SharedApplicationDelegate.self) { r in
            return SharedApplicationDelegateImplementation()
        }
        
        container.register(MainDetailViewCellDelegate.self) { r in
            return MainDetailViewModel()
        }
        
        container.register(UserSignOut.self) { r in
            return SignOut(Auth.auth())
        }
        
        container.register(HomePresentable.self) {r in
            let homePresenter = HomePresenter()
            let homeInteractor = HomeInteractor()
            let signOutInteractor = SignOutInteractor()
            homeInteractor.firebaseDatabaseReference = r.resolve(DataReferenceable.self)
            homePresenter.homePresenterInteractable = homeInteractor
            homePresenter.wireframe = r.resolve(WireframeDelegate.self)
            homePresenter.userDefaults = r.resolve(UserDefaultsProtocol.self)
            homePresenter.signOutInteractor = signOutInteractor
            homePresenter.signOutInteractor?.userSignOut = r.resolve(UserSignOut.self)
            homePresenter.signOutInteractor?.homePresenter = homePresenter
            homeInteractor.homePresenter = homePresenter
            return homePresenter
        }
        
        container.register(ContactUsPresentable.self) {r in
            let contactUsPresenter = ContactUsPresenter()
            let contactUsInteractor = ContactUsInteractableImplementation()
            contactUsInteractor.dataReference =  r.resolve(DataReferenceable.self)
            contactUsPresenter.contactUsInteractor = contactUsInteractor
            contactUsInteractor.contactUsPresenter = contactUsPresenter
            return contactUsPresenter
        }
        
        container.register(AboutPresentable.self) {r in
            let aboutPresenter = AboutPresenter()
            let aboutInteractor = AboutInteractableImplementation()
            aboutInteractor.dataReference =  r.resolve(DataReferenceable.self)
            aboutPresenter.aboutInteractor = aboutInteractor
            aboutInteractor.aboutPresenter = aboutPresenter
            return aboutPresenter
        }
        
        return container
    }
}
