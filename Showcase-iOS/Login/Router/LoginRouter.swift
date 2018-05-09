//
//  LoginRouter.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/07.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import FirebaseAuth
import UIKit

struct LoginRouter: Routable {
    func createModule() -> UIViewController {
        let loginView = DependencyContainer()
                        .container?
                        .resolve(LoginPresenterViewable.self) as! LoginVC
        return loginView
    }
}
