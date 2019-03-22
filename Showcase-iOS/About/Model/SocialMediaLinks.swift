//
//  Social.swift
//  Showcase-iOS
//
//  Created by Sashen Pillay on 2019/03/14.
//  Copyright © 2019 DVT. All rights reserved.
//

import Foundation

class SocialMediaLinks {

    var twitter: String?
    var facebook: String?
    var instagram: String?
    var website: String?

    init(with snapShotValue: [String: Any]?) {
        twitter = snapShotValue?["twitter"] as? String
        facebook = snapShotValue?["facebook"] as? String
        instagram = snapShotValue?["instagram"] as? String
        website = snapShotValue?["website"] as? String
    }

}
