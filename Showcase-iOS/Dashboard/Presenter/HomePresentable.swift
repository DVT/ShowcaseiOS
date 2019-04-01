//
//  HomePresentable.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/02.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

protocol HomePresentable {
    var showcaseAppViewModels: [ShowcaseAppViewModel] { get set}
    func onFetchShowcaseAppsSuccess(with showcaseApps: [ShowcaseApp])
    func onFetchShowcaseAppsFailure(with error: DatabaseError)
    func fetchAllImages(for showcaseAppViewModels: [ShowcaseAppViewModel], completed: @escaping ([String: URL]) -> ())
    func fetchShowcaseApps()
    func search(text:String?) -> [ShowcaseAppViewModel]
    func transitionToShowcaseAppDetailView(with showcaseAppViewModel: ShowcaseAppViewModel)
    func signOutUser()
    func signedOut()
    func trackDidSelectApplication(application: String)
    func trackButtonTap(analyticTag: AnalyticTag)
}
