//
//  HomeViewController.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/14.
//  Copyright © 2018 DVT. All rights reserved.
//

import UIKit

class HomeViewController: UICollectionViewController {
    var presenter: HomePresentable?
    var showcaseAppsViewModel: [ShowcaseAppViewModel] = [ShowcaseAppViewModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.fetchShowcaseApps()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension HomeViewController: HomePresenterViewable {
    
    func showOnSuccess(with showcaseApps: [ShowcaseAppViewModel]) {
        self.showcaseAppsViewModel = showcaseApps
    }
    
    func showOnFailure(with error: DatabaseError) {
        
    }
}
