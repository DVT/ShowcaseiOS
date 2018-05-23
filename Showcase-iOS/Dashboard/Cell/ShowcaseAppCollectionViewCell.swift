//
//  ShowcaseAppCollectionViewCell.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/14.
//  Copyright © 2018 DVT. All rights reserved.
//

import UIKit
import Kingfisher

class ShowcaseAppCollectionViewCell: UICollectionViewCell {
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var shortDescriptionLabel: UILabel!
    @IBOutlet private weak var clientLabel: UILabel!
    
    var firebaseStorage: FIRStoring?
    
    func populateCell(with showcaseViewModel: ShowcaseAppViewModel) {
        self.shortDescriptionLabel.text = showcaseViewModel.name
        self.clientLabel.text = showcaseViewModel.client
        self.populateImageView(with: showcaseViewModel.iconUrl)
        self.imageView.clipsToBounds = true
        self.imageView.layer.borderColor = UIColor.lightGray.cgColor
        self.imageView.layer.borderWidth = 1
    }
    
    func populateImageView(with iconUrl: String?) {
        guard let imageUrl = iconUrl else {
            return
        }
        guard let firStorage = self.firebaseStorage else  {
            return
        }
        let imageFetcher = ImageFetcher(from: firStorage)
        imageFetcher.fetchImage(imageUrl) { (url, error) in
            if error == nil {
                guard let imageURL = url else {
                    return
                }
                let resource = ImageResource(downloadURL: imageURL, cacheKey: imageUrl)
                self.imageView.kf.setImage(with: resource, placeholder: nil, options: nil, progressBlock: nil, completionHandler: nil)
            }
        }
    }
}
