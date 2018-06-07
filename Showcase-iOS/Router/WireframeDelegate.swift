//
//  WireframeDelegate.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/25.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import UIKit

protocol WireframeDelegate {
    func transitionToShowcaseAppDetailView(_ controller:HomeViewController, with showcaseAppViewModel: ShowcaseAppViewModel)
    func transitionToLoginView(_ controller:HomeViewController)
    func transitionToMailComposer(_ controller:LoginViewController)
}
