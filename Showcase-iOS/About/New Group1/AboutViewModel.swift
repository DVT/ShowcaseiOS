//
//  AboutViewModel.swift
//  Showcase-iOS
//
//  Created by Sashen Pillay on 2019/03/14.
//  Copyright © 2019 DVT. All rights reserved.
//

import Foundation

class AboutViewModel {
    
    var socialMediaLinks: SocialMediaLinks?
    
    var twitter : URL {
        let url = URL(string: socialMediaLinks?.twitter ?? "https://twitter.com/dvt_corporate")
        return url!
    }

    var facebook : URL {
        let url = URL(string: socialMediaLinks?.twitter ?? "https://www.facebook.com/DVTSoftware")
        return url!
    }
    
    var instagram : URL {
        let url = URL(string: socialMediaLinks?.twitter ?? "https://www.instagram.com/dvtsoftware/")
       return url!
    }
    
    var website : URL {
        let url = URL(string: socialMediaLinks?.twitter ?? "https://www.dvt.co.za")
        return url!
    }
    
    init(socialMediaLinks: SocialMediaLinks) {
        self.socialMediaLinks = socialMediaLinks
    }
    
}
