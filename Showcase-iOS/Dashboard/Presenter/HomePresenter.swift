//
//  HomePresenter.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/03.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import UIKit

class HomePresenter: HomePresentable {
    var showcaseAppViewModels: [ShowcaseAppViewModel] = [ShowcaseAppViewModel]()
    var homePresenterViewable: HomePresenterViewable?
    var homePresenterInteractable: HomePresenterInteractable?
    var wireframe: WireframeDelegate?
    
    func fetchShowcaseApps() {
        self.homePresenterViewable?.startLoadingAnimation()
        self.homePresenterInteractable?.fetchShowcaseApps()
    }
    
    func onFetchShowcaseAppsSuccess(with showcaseApps: [ShowcaseApp]) {
        var showcaseAppViewModel = [ShowcaseAppViewModel]()
        showcaseApps.forEach { showcaseApp in
            showcaseAppViewModel.append(ShowcaseAppViewModel(with: showcaseApp))
        }
        self.homePresenterViewable?.stopLoadingAnimation()
        self.showcaseAppViewModels = showcaseAppViewModel
        self.homePresenterViewable?.showOnSuccess(with: showcaseAppViewModel)
    }
    
    func onFetchShowcaseAppsFailure(with error: DatabaseError) {
        self.homePresenterViewable?.stopLoadingAnimation()
        self.homePresenterViewable?.showOnFailure(with: error)
    }
    
    func search(text: String?) -> [ShowcaseAppViewModel] {
        var filteredShowcaseAppsViewModels = [ShowcaseAppViewModel]()
        guard let searchText = text, searchText.count > 0 else {
            return self.showcaseAppViewModels
        }
        let showcaseApps = self.showcaseAppViewModels.filter {
            showcaseApp in
            guard let filtered = showcaseApp.client?.lowercased().contains(searchText.lowercased()) else {
                return false
            }
            return filtered
        }
        filteredShowcaseAppsViewModels = showcaseApps        
        return filteredShowcaseAppsViewModels
    }
    
    func  transitionToShowcaseAppDetailView(with showcaseAppViewModel: ShowcaseAppViewModel) {
        guard let controller = homePresenterViewable as? HomeViewController else {
            return
        }
        self.wireframe?.transitionToShowcaseAppDetailView(controller, with: showcaseAppViewModel)
    }
}
