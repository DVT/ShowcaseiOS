//
//  LoginInteractor.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/04/20.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

class LoginInteractor: LoginPresenterInteractable {
    var loginPresenter: LoginInteractorPresentable?
    var userAuthenticator: LoginAuthenticating?
    
    func signIn(withEmail email: String, password: String) {
        self.userAuthenticator?.signIn(withEmail: email, password: password) { [weak self] (user, error) in
            if let error = error {
                self?.loginPresenter?.failedToSign(withError: error)
            } else if let _ = user {
                self?.loginPresenter?.signedInSuccessfully()
            }
        }
    }
}


