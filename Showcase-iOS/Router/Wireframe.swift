//
//  Wireframe.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/24.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import UIKit

class Wireframe: WireframeDelegate {
    
    func onMainThread(block: @escaping ()-> Void) {
        DispatchQueue.main.async(execute: block)
    }
    
    func  transitionToShowcaseAppDetailView(_ controller:HomeViewController, with showcaseAppViewModel: ShowcaseAppViewModel) {
        self.onMainThread {
            let newController = ShowcaseAppDetailViewController.instantiate(fromAppStoryboard: .DetailView)
            newController.showcaseAppViewModel = showcaseAppViewModel
            controller.tabBarController?.tabBar.isHidden = true
            controller.navigationController?.pushViewController(newController, animated: true)
        }
    }
    
    func transitionToLoginView(_ controller:HomeViewController) {
        self.onMainThread {
            let newController = LoginNavigationController.instantiate(fromAppStoryboard: .Login)
            controller.present(newController, animated: true)
        }
    }
}
