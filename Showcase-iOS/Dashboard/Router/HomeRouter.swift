//
//  HomeRouter.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/14.
//  Copyright © 2018 DVT. All rights reserved.
//

import UIKit
import Foundation

class HomeRouter: Routable {
    func createModule() -> UIViewController {
        let view = DependencyInjection().container?.resolve(HomePresenterViewable.self) as! HomeViewController
        return view
    }
}
