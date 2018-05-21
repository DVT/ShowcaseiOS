//
//  PresenterInteractable.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/04/20.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation


protocol LoginPresenterInteractable {
    var loginPresenter: LoginInteractorPresentable? { get set}
    var userAuthenticator: LoginAuthenticating? { get set}
    func signIn(withEmail email: String, password: String)
}
