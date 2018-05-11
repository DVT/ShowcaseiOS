

import UIKit
import MapKit

class ContactUsCollectionViewCell: UICollectionViewCell {
    
    //MARK: Properties
    var cellViewModel: ContactUsCellViewModel?
    static let identifier = String(describing: ContactUsCollectionViewCell.self)
    //MARK: @IBOutlets
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var branch: UILabel!
    @IBOutlet weak var locationDescription: UILabel!
    
    //MARK: @IBActions
    
    @IBAction func emailPressed(_ sender: Any) {
        cellViewModel?.email()
    }
    
    @IBAction func callPressed(_ sender: Any) {
        cellViewModel?.call()
    }
    
    @IBAction func navigatePressed(_ sender: Any) {
        cellViewModel?.navigate()
    }
    
    func populateView(with viewModel: ContactUsCellViewModel) {
        if let imagePath = viewModel.officeViewModel?.imageUrl {
            image.image = UIImage(named: imagePath)
        }
    }
    

}
