//
//  AboutPresentable.swift
//  Showcase-iOS
//
//  Created by Sashen Pillay on 2019/03/14.
//  Copyright © 2019 DVT. All rights reserved.
//

import Foundation

protocol AboutPresentable {
    func onRetrieveSocialMediaLinksComplete(with links: SocialMediaLinks)
    func onRetrieveSocialMediaLinksFailed(with error: Error)
    func retrieveSocialMediaLinks()
}
