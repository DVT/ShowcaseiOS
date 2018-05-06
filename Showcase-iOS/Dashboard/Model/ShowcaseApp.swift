//
//  ShowcaseApp.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/02.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import Firebase

class ShowcaseApp {
    var client: String?
    var functionality: String?
    var iconUrl: String?
    var id: String?
    var industry: String?
    var screenshots: [String]?
    var shortDescription: String?
    var technologyUsed: String?
    
    init(with snapshot: DataSnapshot?) {
        if let dictionary = snapshot?.value as? Dictionary<String, Any> {
            self.client = dictionary["client"] as? String
            self.functionality = dictionary["functionality"] as? String
            self.iconUrl = dictionary["iconUrl"] as? String
            self.id = dictionary["id"] as? String
            self.industry = dictionary["industry"] as? String
            self.screenshots = dictionary["screenshots"] as? [String]
            self.shortDescription = dictionary["shortDescription"] as? String
            self.technologyUsed = dictionary["technologyUsed"] as? String
        }
    }
}
