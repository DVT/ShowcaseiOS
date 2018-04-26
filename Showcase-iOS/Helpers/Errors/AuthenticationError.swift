//
//  AuthenticationError.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/04/25.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

enum AuthenticationError: Error {
    case invalidEmail
    case invalidPassword
    case invalidInputs
    case notAuthenticated
}
