//
//  HomePresenterViewable.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/03.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

protocol HomePresenterViewable {
    func showOnSuccess(with showcaseApps: [ShowcaseAppViewModel])
    func showOnFailure(with error: DatabaseError)
}
