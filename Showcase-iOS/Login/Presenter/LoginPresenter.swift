//
//  LoginPresenter.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/04/24.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

class LoginPresenter: LoginPresentable {
    var loginViewer: PresenterViewable?
    var loginInteractor: PresenterInteractable?
    let emailValidator = EmailValidator()

    func login(withEmail email: String, password: String) {
        if emailValidator.isValid(email) {
            loginInteractor?.signIn(withEmail: email, password: password)
        } else {
            loginViewer?.showEmailValidationFailure()
        }
    }
}
