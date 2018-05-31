//
//  SignOut.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/31.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import FirebaseAuth

class SignOut: UserSignOut {
    var firebaseSignOut: FirebaseSignOut
    
    init(_ firebaseSignOut: FirebaseSignOut) {
        self.firebaseSignOut = firebaseSignOut
    }
    
    func signOut() throws {
        try self.firebaseSignOut.signOut()
    }
}
