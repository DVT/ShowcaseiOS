

import UIKit
import Kingfisher
import MapKit

class ContactUsCollectionViewCell: UICollectionViewCell {
    
    //MARK: Properties
    static let identifier = String(describing: ContactUsCollectionViewCell.self)
    var firebaseStorage: FIRStoring?
    let staticMapbaseUrl = "https://maps.googleapis.com/maps/api/staticmap?zoom=13&maptype=roadmap&markers=color:red%7C"
    var viewModel: ContactUsCellViewModel?
    //MARK: @IBOutlets
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var mapImage: UIImageView!
    @IBOutlet weak var branch: UILabel!
    @IBOutlet weak var locationDescription: UILabel!
    
    //MARK: @IBActions
    
    @IBAction func emailPressed(_ sender: Any) {
        viewModel?.email()
    }
    
    @IBAction func callPressed(_ sender: Any) {
        viewModel?.call()
    }
    
    @IBAction func navigatePressed(_ sender: Any) {
    }
    
    func populateView() {
        guard let imagePath = viewModel?.officeViewModel?.imageUrl else { return }
        populateImageView(with: imagePath)
        branch.text = viewModel?.branch
        locationDescription.text = viewModel?.locationDescription
        populateStaticMap()
    }
    
    private func populateImageView(with imagePath: String) {
        guard let firStorage = self.firebaseStorage else { return }
        let imageFetcher = ImageFetcher(from: firStorage)
        imageFetcher.fetchImage(imagePath) {[weak self] (url, error) in
            if error != nil {
                //TO DO: Present error or placeholder image
            } else {
                guard let imageUrl = url else{return}
                let resource = ImageResource(downloadURL: imageUrl, cacheKey: imagePath)
                self?.image.kf.setImage(with: resource, placeholder: nil, options: nil, progressBlock: nil, completionHandler: nil)
            }
        }
    }
    
    private func populateStaticMap(){
        let staticMapPath = staticMapbaseUrl + "\(String(describing: viewModel?.latitude)),\(String(describing: viewModel?.longitude))&size=\(mapImage.frame.size.width)x\(mapImage.frame.size.height)"
        guard let urlString = staticMapPath.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) else {return}
        guard let mapUrl = URL(string: urlString) else {return}
        let imageData = try! Data(contentsOf: mapUrl)
        mapImage.image = UIImage(data: imageData)
    }
}
