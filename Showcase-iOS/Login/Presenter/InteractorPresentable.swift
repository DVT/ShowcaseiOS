//
//  InteractorPresentable.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/04/20.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

protocol InteractorPresentable {
    func signedInSuccessfully()
    func failedToSign(withError error: Error)
}
