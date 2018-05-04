//
//  FirUserProtocol.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/03.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import FirebaseAuth

protocol FirUserProtocol {
    var uid: String { get}
}

extension User: FirUserProtocol {}
