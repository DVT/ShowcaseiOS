//
//  LoginPresenter.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/04/24.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import FirebaseAuth
import MessageUI

class LoginPresenter: LoginPresentable {
    var userDefaults: UserDefaultsProtocol?
    var loginViewer: LoginPresenterViewable?
    var loginInteractor: LoginPresenterInteractable?
    
    let emailValidator = EmailValidator()
    let passwordValidator = PasswordValidator()
    
    func login(withEmail email: String, password: String) {
        if emailValidator.isValid(email) && passwordValidator.isValid(password) {
            loginViewer?.startLoadingAnimation()
            loginInteractor?.signIn(withEmail: email, password: password)
        } else if (!emailValidator.isValid(email) && !passwordValidator.isValid(password)){
            loginViewer?.showInvalidInputsFailure(withError: AuthenticationError.invalidInputs)
        } else if !emailValidator.isValid(email) {
            loginViewer?.showEmailValidationFailure(withError: AuthenticationError.invalidEmail)
        } else if !passwordValidator.isValid(password) {
            loginViewer?.showPasswordValidationFailure(withError: AuthenticationError.invalidPassword)
        }
    }
    
    func showSuccesWhenUserIsAlreadyAuthenticated() {
        if let isUserAlreadyLoggedIn = userDefaults?.bool(forKey: UserDefaultsKeys.isLoggedIn.rawValue) {
            if isUserAlreadyLoggedIn {
                loginViewer?.showSuccess()
            }
        }
    }
}

extension LoginPresenter: LoginInteractorPresentable {
    func signedInSuccessfully() {
        loginViewer?.stopLoadingAnimation()
        userDefaults?.set(value: true, forKey: UserDefaultsKeys.isLoggedIn.rawValue)
        loginViewer?.showSuccess()
    }
    
    func failedToSign(withError error: Error) {
        self.loginViewer?.stopLoadingAnimation()
        let authenticationError = AuthErrorCode(rawValue: error._code)
        loginViewer?.showAuthenticationFailure(withMessage: authenticationError?.errorMessage)
    }
}

extension LoginPresenter: MailComposable {
    func openMailClient() {
        let loginViewController = loginViewer as! LoginViewController
        let emailvalue = "mobile@dvt.co.za" //TODO: Maybe this email can come from firebase at a later stage
        if !MFMailComposeViewController.canSendMail() {
            let emailValidator = EmailValidator()
            if emailValidator.isValid(emailvalue) {
                guard let emailAddress = URL(string: "mailto:\(emailvalue)") else {return}
                loginViewController.sharedApplication?.openSharedApplication(with: emailAddress)
            }
        }
        let mailClient = MFMailComposeViewController()
        mailClient.mailComposeDelegate = loginViewController
        mailClient.setToRecipients([emailvalue])
        mailClient.setSubject("New User Registration")
        loginViewController.present(mailClient, animated: true, completion: nil)
    }
}


