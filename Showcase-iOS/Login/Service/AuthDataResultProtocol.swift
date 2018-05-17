//
//  FIRAuthDataResultProtocol.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/16.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import FirebaseAuth

protocol AuthDataResultProtocol {
    var user: FirUserProtocol { get}
}

extension AuthDataResult: AuthDataResultProtocol {
    var user: FirUserProtocol {
        return self.user
    }
}
