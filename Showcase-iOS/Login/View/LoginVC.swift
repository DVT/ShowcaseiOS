//
//  LoginVC.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/07.
//  Copyright © 2018 DVT. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    var loginPresenter: LoginPresentable?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension LoginVC: LoginPresenterViewable {
    
    func showEmailValidationFailure(withError error: AuthenticationError) {
    }
    
    func showPasswordValidationFailure(withError error: AuthenticationError) {
    }
    
    func showInvalidInputsFailure(withError error: AuthenticationError) {
    }
    
    func showAuthenticationFailure(withMessage: String?) {
    }
    
    func showSuccess() {
    }
    
}
