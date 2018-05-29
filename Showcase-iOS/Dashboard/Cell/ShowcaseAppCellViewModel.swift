//
//  ShowcaseAppCellViewModel.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/29.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

struct  ShowcaseAppCellViewModel {
    func getImageURL(_ showcaseViewModel: ShowcaseAppViewModel, _ imageDictionary: [String : URL]) -> URL? {
        var imageURL: URL?
        if let showcaseAppID = showcaseViewModel.id {
            if let url = imageDictionary[showcaseAppID] {
                imageURL = url
            }
        }
        return imageURL
    }
}
