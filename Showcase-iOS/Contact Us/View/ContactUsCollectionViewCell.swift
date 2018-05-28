

import UIKit
import Kingfisher
import MapKit

class ContactUsCollectionViewCell: UICollectionViewCell {
    
    //MARK: Properties
    
    static let identifier = String(describing: ContactUsCollectionViewCell.self)
    var firebaseStorage: FIRStoring?
    let staticMapbaseUrl = "https://maps.googleapis.com/maps/api/staticmap?&zoom=15&size=600x300&maptype=roadmap&markers=color:red%7C"
    var viewModel: ContactUsCellViewModel!
    
    //MARK: @IBOutlets
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var mapImage: UIImageView!
    @IBOutlet weak var branch: UILabel!
    @IBOutlet weak var locationDescription: UILabel!
    
    @IBOutlet weak var email: UIButton!
    @IBOutlet weak var call: UIButton!
    @IBOutlet weak var navigate: UIButton!
    
    
    
    //MARK: @IBActions
    
    @IBAction func emailPressed(_ sender: Any) {
        viewModel?.email()
    }
    
    @IBAction func callPressed(_ sender: Any) {
        viewModel?.call()
    }
    
    @IBAction func navigatePressed(_ sender: Any) {
        viewModel?.navigate()
    }
    
    //MARK: Operations
    
    func populateView() {
        guard let imagePath = viewModel?.officeViewModel?.imageUrl else { return }
        populateImageView(with: imagePath)
        branch.text = viewModel?.branch
        locationDescription.text = viewModel?.locationDescription
        populateStaticMap()
        styleView()
    }
    
    private func populateImageView(with imagePath: String) {
        guard let firStorage = self.firebaseStorage else { return }
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
    
    private func populateStaticMap(){
        let temp = "\(staticMapbaseUrl)\(viewModel.latitude),\(viewModel.longitude)"
        guard let mapUrl = URL(string: temp) else {return}
        mapImage.kf.setImage(with: mapUrl)
    }
    
    private func styleView() {
        email.setTitleColor(UIColor.DvtBlueColor, for: .normal)
        call.setTitleColor(UIColor.DvtBlueColor, for: .normal)
        navigate.setTitleColor(UIColor.DvtBlueColor, for: .normal)
        
    }
}
