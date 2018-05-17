//
//  HomePresentable.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/02.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

protocol HomePresentable {
    func onFetchShowcaseAppsSuccess(with showcaseApps: [ShowcaseApp])
    func onFetchShowcaseAppsFailure(with error: DatabaseError)
    func fetchShowcaseApps()
}
