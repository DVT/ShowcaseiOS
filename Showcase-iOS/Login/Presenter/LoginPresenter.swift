//
//  LoginPresenter.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/04/24.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

class LoginPresenter: LoginPresentable {
    var loginViewer: PresenterViewable
    var loginInteractor: PresenterInteractable
    let emailValidator = EmailValidator()
    let passwordValidator = PasswordValidator()
    
    init(_ loginViewer: PresenterViewable,_ loginInteractor: PresenterInteractable) {
        self.loginViewer = loginViewer
        self.loginInteractor = loginInteractor
    }

    func login(withEmail email: String, password: String) {
        if emailValidator.isValid(email) && passwordValidator.isValid(password) {
            loginInteractor.signIn(withEmail: email, password: password)
        } else if (!emailValidator.isValid(email) && !passwordValidator.isValid(password)){
            loginViewer.showInvalidInputsFailure(withError: AuthenticationError.invalidInputs)
        } else if !emailValidator.isValid(email) {
            loginViewer.showEmailValidationFailure(withError: AuthenticationError.invalidEmail)
        } else if !passwordValidator.isValid(password) {
            loginViewer.showPasswordValidationFailure(withError: AuthenticationError.invalidPassword)
        }
    }
}
