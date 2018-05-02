//
//  AuthErrorCode+Extension.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/04/26.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import FirebaseAuth

extension AuthErrorCode {
    var errorMessage: String {
        switch self {
        case .operationNotAllowed :
            return ErrorMesssage.operationNotAllowed.rawValue
        case .invalidEmail:
            return ErrorMesssage.invalidEmail.rawValue
        case .userDisabled:
            return ErrorMesssage.userDisabled.rawValue
        case .wrongPassword:
            return ErrorMesssage.wrongPassword.rawValue
        case .networkError:
            return ErrorMesssage.networkError.rawValue
        case .userNotFound:
            return ErrorMesssage.userNotFound.rawValue
        default:
            return ErrorMesssage.defaultErrorMessage.rawValue
        }
    }
}
