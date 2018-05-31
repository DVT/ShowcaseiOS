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
    let showcaseAppCellViewModel = ShowcaseAppCellViewModel()
    
    func populateCell(with showcaseViewModel: ShowcaseAppViewModel, imageDictionary: [String: URL]) {
        self.shortDescriptionLabel.text = showcaseViewModel.name
        self.clientLabel.text = showcaseViewModel.client
        populateImageView(showcaseViewModel: showcaseViewModel, imageDictionary: imageDictionary)
        self.imageView.clipsToBounds = true
        self.imageView.layer.borderColor = UIColor.lightGray.cgColor
        self.imageView.layer.borderWidth = 1
    }
    
    func populateImageView(showcaseViewModel: ShowcaseAppViewModel, imageDictionary: [String: URL]) {
        guard let imageURL = showcaseAppCellViewModel.getImageURL(showcaseViewModel, imageDictionary) else {
            self.imageView.image = #imageLiteral(resourceName: "placeHolder")
            return
        }
        let resource = ImageResource(downloadURL: imageURL, cacheKey: imageURL.absoluteString)
        self.imageView.kf.setImage(with: resource, placeholder: nil, options: nil, progressBlock: nil, completionHandler: nil)
    }
}
