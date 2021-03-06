import UIKit
import Kingfisher
import MapKit

class ContactUsCollectionViewCell: UICollectionViewCell {

    // MARK: Properties

    static let identifier = String(describing: ContactUsCollectionViewCell.self)
    var firebaseStorage: FIRStoring?
    var presenter: ContactUsPresentable?
    var viewModel: ContactUsCellViewModel!

    // MARK: @IBOutlet(s)

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var branch: UILabel!
    @IBOutlet weak var locationDescription: UILabel!
    @IBOutlet weak var email: UIButton!
    @IBOutlet weak var call: UIButton!
    @IBOutlet weak var navigate: UIButton!

    // MARK: @IBAction(s)

    @IBAction func emailPressed(_ sender: Any) {
        presenter?.trackButtonTap(analyticTag: .emailButtonTap)
        viewModel?.email()
    }

    @IBAction func callPressed(_ sender: Any) {
        presenter?.trackButtonTap(analyticTag: .callButtonTap)
        viewModel?.call()
    }

    @IBAction func navigatePressed(_ sender: Any) {
        presenter?.trackButtonTap(analyticTag: .navigateButtonTap)
        viewModel?.navigate()
    }

    // MARK: Operation(s)

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

    private func setupMap() {
        let location = createLocation()
        let region = createRegion(location: location)
        let pin = createPin(region: region)
        map.setRegion(region, animated: false)
        map.addAnnotation(pin)
        setupMapTap()
    }

    private func createLocation() -> CLLocationCoordinate2D {
        let longitude = CLLocationDegrees(exactly: viewModel.longitude) ?? 0
        let latitude = CLLocationDegrees(exactly: viewModel.latitude) ?? 0
        let location = CLLocationCoordinate2D(latitude: latitude,
                                              longitude: longitude)
        return location
    }

    private func createRegion(location: CLLocationCoordinate2D) -> MKCoordinateRegion {
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        return MKCoordinateRegion(center: location, span: span)
    }

    private func createPin(region: MKCoordinateRegion) -> MKPointAnnotation {
        let pin = MKPointAnnotation()
        pin.coordinate = region.center
        return pin
    }

    private func setupMapTap() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(mapTapped(tapGestureRecognizer:)))
        map.addGestureRecognizer(tap)
    }

    private func styleView() {
        email.setTitleColor(UIColor.DvtBlueColor, for: .normal)
        call.setTitleColor(UIColor.DvtBlueColor, for: .normal)
        navigate.setTitleColor(UIColor.DvtBlueColor, for: .normal)
    }

    @objc private func mapTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        viewModel?.navigate()
    }

}
