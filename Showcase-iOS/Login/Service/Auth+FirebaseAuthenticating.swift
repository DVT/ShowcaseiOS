//
//  Auth+FirebaseAuthenticating.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/04/20.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import FirebaseAuth

extension Auth: FirebaseLoginAuthenticating {
    func signIn(withEmail email: String, password: String, completion: @escaping (AuthDataResultProtocol?, Error?) -> Void) {
        let completion = completion as AuthDataResultCallback
        self.signIn(withEmail: email, password: password, completion: completion)
    }
}
