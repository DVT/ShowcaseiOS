//
//  User.swift
//  Showcase-iOSTests
//
//  Created by Lehlohonolo Mbele on 2018/04/20.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

class User: Equatable {
    let email: String
    
    init(email: String) {
        self.email = email
    }
    
    static func == (lhs: User, rhs: User) -> Bool {
        return lhs.email == rhs.email
    }
}
