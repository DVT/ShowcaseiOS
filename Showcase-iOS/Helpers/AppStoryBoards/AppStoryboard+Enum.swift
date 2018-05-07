//
//  AppStoryboard+Enum.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/07.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import UIKit

enum AppStoryBoard: String {
    case Login, Main, Home, About, Contact
    
    var instance: UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
    }
    
    func viewController<T: UIViewController>(viewControllerClass: T.Type) -> T {
        let storyBoardID = viewControllerClass.storyBoardID
        return instance.instantiateViewController(withIdentifier: storyBoardID) as! T
    }
    
    func instantiateViewController() -> UIViewController? {
        return instance.instantiateInitialViewController()
    }
}
