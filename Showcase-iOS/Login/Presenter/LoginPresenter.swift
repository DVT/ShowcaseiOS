//
//  LoginPresenter.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/04/24.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import FirebaseAuth

class LoginPresenter: LoginPresentable {
    var loginViewer: LoginPresenterViewable?
    var loginInteractor: LoginPresenterInteractable?
    
    let emailValidator = EmailValidator()
    let passwordValidator = PasswordValidator()

    func login(withEmail email: String, password: String) {
        if emailValidator.isValid(email) && passwordValidator.isValid(password) {
            loginInteractor?.signIn(withEmail: email, password: password)
        } else if (!emailValidator.isValid(email) && !passwordValidator.isValid(password)){
            loginViewer?.showInvalidInputsFailure(withError: AuthenticationError.invalidInputs)
        } else if !emailValidator.isValid(email) {
            loginViewer?.showEmailValidationFailure(withError: AuthenticationError.invalidEmail)
        } else if !passwordValidator.isValid(password) {
            loginViewer?.showPasswordValidationFailure(withError: AuthenticationError.invalidPassword)
        }
    }
}

extension LoginPresenter: LoginInteractorPresentable {
    func signedInSuccessfully() {
        loginViewer?.showSuccess()
    }
    
    func failedToSign(withError error: Error) {
        let authenticationError = AuthErrorCode(rawValue: error._code)
        loginViewer?.showAuthenticationFailure(withMessage: authenticationError?.errorMessage)
    }
}
