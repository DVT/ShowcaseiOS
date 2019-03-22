import UIKit
import Kingfisher

class ShowcaseAppCollectionViewCell: UICollectionViewCell {

    // MARK: @IBOutlets

    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var shortDescriptionLabel: UILabel!
    @IBOutlet private weak var clientLabel: UILabel!

    // MARK: Properties

    let showcaseAppCellViewModel = ShowcaseAppCellViewModel()

    // MARK: Opertaions

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
