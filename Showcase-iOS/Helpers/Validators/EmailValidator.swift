//
//  EmailValidator.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/04/24.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

struct EmailValidator {
    
    func isValid(_ email: String) -> Bool {
        let emailRegularExpression =  "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegularExpression)
        return emailPredicate.evaluate(with: email)
    }
}
