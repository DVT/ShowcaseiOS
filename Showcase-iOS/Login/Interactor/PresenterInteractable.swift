//
//  PresenterInteractable.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/04/20.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation


protocol PresenterInteractable {
    var loginPresenter: InteractorPresentable? { get set}
    var userAuthenticator: Authenticating? { get set}
    func signIn(withEmail email: String, password: String)
}
