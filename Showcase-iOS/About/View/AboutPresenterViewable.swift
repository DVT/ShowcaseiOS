//
//  AboutPresenterViewable.swift
//  Showcase-iOS
//
//  Created by Sashen Pillay on 2019/03/14.
//  Copyright © 2019 DVT. All rights reserved.
//

import Foundation

protocol AboutPresenterViewable {
    func showOnSuccess(with aboutViewModel: AboutViewModel)
    func hideOnFailure(with error: Error)
    func startLoadingAnimation()
    func stopLoadingAnimation()
}
