//
//  PasswordValidator.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/04/24.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

class PasswordValidator {
    func isValid(_ password: String) -> Bool {
        return password.count > 1
    }
}
