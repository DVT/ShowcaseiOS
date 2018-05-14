//
//  HomePresenter.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/03.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

class HomePresenter: HomePresentable {
    var homePresenterViewable: HomePresenterViewable
    var homePresenterInteractable: HomePresenterInteractable
    
    init(presenterViewable: HomePresenterViewable, presenterInteractable: HomePresenterInteractable) {
        self.homePresenterViewable = presenterViewable
        self.homePresenterInteractable = presenterInteractable
    }
    
    func fetchShowcaseApps() {
        self.homePresenterInteractable.fetchShowcaseApps()
    }
    
    func onFetchShowcaseAppsSuccess(with showcaseApps: [ShowcaseApp]) {
        var showcaseAppsViewModel = [ShowcaseAppViewModel]()
        showcaseApps.forEach { showcaseApp in
            showcaseAppsViewModel.append(ShowcaseAppViewModel(with: showcaseApp))
        }
        self.homePresenterViewable.showOnSuccess(with: showcaseAppsViewModel)
    }
    
    func onFetchShowcaseAppsFailure(with error: DatabaseError) {
        self.homePresenterViewable.showOnFailure(with: error)
    }
}
