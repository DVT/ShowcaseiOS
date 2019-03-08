

import UIKit
import Kingfisher
import MapKit

class ContactUsCollectionViewCell: UICollectionViewCell {
    
    //MARK: Properties
    
    static let identifier = String(describing: ContactUsCollectionViewCell.self)
    var firebaseStorage: FIRStoring?
    var viewModel: ContactUsCellViewModel!
    
    //MARK: @IBOutlets
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var map: MKMapView!
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
        setupMap()
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
    
    private func setupMap(){
        let longitude = CLLocationDegrees(exactly: viewModel.longitude) ?? 0
        let latitude = CLLocationDegrees(exactly: viewModel.latitude) ?? 0
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let location = CLLocationCoordinate2D(latitude: latitude,
                                              longitude: longitude)
        let region = MKCoordinateRegion(center: location, span: span)
        let pin = MKPointAnnotation()
        pin.coordinate = region.center
        map.setRegion(region, animated: false)
        map.addAnnotation(pin)
    }
    
    private func styleView() {
        email.setTitleColor(UIColor.DvtBlueColor, for: .normal)
        call.setTitleColor(UIColor.DvtBlueColor, for: .normal)
        navigate.setTitleColor(UIColor.DvtBlueColor, for: .normal)
        
    }
}
