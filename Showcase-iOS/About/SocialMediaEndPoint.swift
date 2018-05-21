//
//  SocialMediaEndPoint.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/21.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

enum SocialMediaEndpoint: String {
    case website = "https://www.dvt.co.za"
    case twitter = "https://twitter.com/dvt_corporate"
    case facebook = "https://www.facebook.com/DVTSoftware"
    case instagram = "https://www.instagram.com/dvtsoftware/"
    
    var url: URL {
        let url = URL(string: self.rawValue)
        return url!
    }
}
