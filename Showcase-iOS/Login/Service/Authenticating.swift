//
//  Authenticating.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/04/18.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

protocol Authenticating {
    func signIn(withEmail email: String, password: String, completion: @escaping (Any?, Error?) -> Void)
}
