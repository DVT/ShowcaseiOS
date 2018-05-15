//
//  TabBarViewController.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/14.
//  Copyright © 2018 DVT. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    var currentIndex = TabBarIndex.home.rawValue
    
    enum TabBarIndex:Int {
        case home = 0, about, contacts
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.inject(with: .Home)
    }
}

extension TabBarViewController: InjectView {
    
    func inject(with storyBoard: AppStoryBoard) {
        if storyBoard == .Home {
            self.viewControllers?[self.currentIndex] = HomeRouter().createModule()
        }
    }
}
