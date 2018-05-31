//
//  SignOutInteractor.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/31.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import FirebaseAuth

class SignOutInteractor {
    var userSignOut: UserSignOut?
    var homePresenter: HomePresentable?
    
    func signOut() {
        do {
            try userSignOut?.signOut()
            homePresenter?.signedOut()
        } catch _ {}
    }
}
