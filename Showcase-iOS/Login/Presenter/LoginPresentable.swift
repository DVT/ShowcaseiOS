//
//  LoginPresentable.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/04/24.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

protocol LoginPresentable {
    var loginInteractor: PresenterInteractable? { get set}
    func login(withEmail email: String, password: String)
}
