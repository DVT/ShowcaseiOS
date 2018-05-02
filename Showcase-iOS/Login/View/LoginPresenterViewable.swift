//
//  PresenterViewable.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/04/24.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

protocol LoginPresenterViewable {
    func showEmailValidationFailure(withError error: AuthenticationError)
    func showPasswordValidationFailure(withError error: AuthenticationError)
    func showInvalidInputsFailure(withError error: AuthenticationError)
    func showAuthenticationFailure(withMessage: String?)
    func showSuccess()
}