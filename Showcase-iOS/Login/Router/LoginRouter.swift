//
//  LoginRouter.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/07.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import UIKit

struct LoginRouter: Routable {
    func createModule() -> UIViewController {
        return LoginVC.instantiate(fromAppStoryboard: .Login)
    }
}
