//
//  ScreenshotCollectionViewCell.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/24.
//  Copyright © 2018 DVT. All rights reserved.
//

import UIKit
import Kingfisher

class ScreenshotCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet private  weak var image: UIImageView!
    
    func populateImageView(with imagePath: String) {
        let dependencyContainer = DependencyContainer.container()
        guard let firStorage = dependencyContainer.resolve(FIRStoring.self) else {
            return
        }
        let imageFetcher = ImageFetcher(from: firStorage)
        imageFetcher.fetchImage(imagePath) {[weak self] (url, error) in
            if error != nil {
                self?.image.image = #imageLiteral(resourceName: "placeHolder")
            } else {
                guard let imageUrl = url else{return}
                let resource = ImageResource(downloadURL: imageUrl, cacheKey: imagePath)
                self?.image.kf.setImage(with: resource, placeholder: nil, options: nil, progressBlock: nil, completionHandler: nil)
            }
        }
    }
}
