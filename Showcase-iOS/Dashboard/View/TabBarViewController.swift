//
//  TabBarViewController.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/14.
//  Copyright © 2018 DVT. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupNavigationBarColorPallete()
    }
    
    func setupNavigationBarColorPallete() {
        UINavigationBar.appearance().tintColor = .DvtBlueColor
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor.DvtBlueColor]
    }
}

