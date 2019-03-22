//
//  About.swift
//  Showcase-iOS
//
//  Created by Sashen Pillay on 2019/03/18.
//  Copyright © 2019 DVT. All rights reserved.
//

import Foundation

class About {
    
    var socialMediaLinks: SocialMediaLinks?
    
    init(with snapShotValue: [String: Any]?) {
        socialMediaLinks = SocialMediaLinks(with: snapShotValue?["socialMediaLinks"] as? [String : Any])
        
    }
}
