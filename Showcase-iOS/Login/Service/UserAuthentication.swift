//
//  Authentication.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/04/18.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import FirebaseAuth

class UserAuthentication: LoginAuthenticating {
    var authenticator: FirebaseLoginAuthenticating
    
    init(_ authenticator: FirebaseLoginAuthenticating) {
        self.authenticator = authenticator
    }
    
    func signIn(withEmail email: String, password: String, completion: @escaping (AuthDataResultProtocol?, Error?) -> Void) {
        authenticator.signIn(withEmail: email, password: password) { (user, error) in
            completion(user,error)
        }
    }
}
