//
//  MainDetailViewModel.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/29.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

class MainDetailViewModel: MainDetailViewCellDelegate {
    
    var sharedApplication: SharedApplicationDelegate?
    
    func openURL(iOSPackageName:String?) {
        guard let iOSPackage = iOSPackageName, let url = URL(string: iOSPackage) else {
            return
        }
        self.sharedApplication?.openSharedApplication(with: url)
    }
}
