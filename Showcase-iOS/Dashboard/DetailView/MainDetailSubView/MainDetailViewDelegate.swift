//
//  MainDetailViewDelegate.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/29.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

protocol MainDetailViewCellDelegate {
    var sharedApplication: SharedApplicationDelegate?{get set}
    func openURL(iOSPackageName:String?)
}
