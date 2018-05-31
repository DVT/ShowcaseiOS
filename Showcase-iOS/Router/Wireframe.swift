//
//  Wireframe.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/24.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

class Wireframe: WireframeDelegate {
    
    func onMainThread(block: @escaping ()-> Void) {
        DispatchQueue.main.async(execute: block)
    }
    
    func  transitionToShowcaseAppDetailView(_ controller:HomeViewController, with showcaseAppViewModel: ShowcaseAppViewModel) {
        self.onMainThread {
            let navigationController = controller.navigationController
            guard let newController = controller.storyboard?.instantiateViewController(withIdentifier: "DetailView") as? ShowcaseAppDetailViewController else {
                return
            }
            newController.showcaseAppViewModel = showcaseAppViewModel
            navigationController?.tabBarController?.tabBar.isHidden = true
            navigationController?.pushViewController(newController, animated: true)
        }
    }
}
