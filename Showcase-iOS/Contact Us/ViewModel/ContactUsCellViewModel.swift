

import Foundation
import  UIKit
import MapKit

class ContactUsCellViewModel: ContactUsDelegate {
    //MARK: Properties
    
    var officeViewModel: OfficeViewModel?
    var emailValidator = EmailValidator()
    var latitudeCoordinate: CLLocationDegrees = 0.0
    var longitudeCoordinate: CLLocationDegrees = 0.0
    
    //MARK: Lifecycle
    
    init(with officeViewModel: OfficeViewModel?) {
        self.officeViewModel = officeViewModel
    }
    
    //MARK: Operations
    
    func call() {
        guard let telephoneNumber = officeViewModel?.telephoneNumber else { return }
        guard let number = URL(string: telephoneNumber) else { return }
        openSharedApplication(with: number)
    }
    
    func email() {
        guard let emailAdrress = officeViewModel?.emailAddress else {return}
        if emailValidator.isValid(emailAdrress) {
            guard let email = URL(string: emailAdrress) else { return }
            openSharedApplication(with: email)
        }
    }
    
    func navigate() {
        if let latitude = latitude, let longitude = longitude {
            self.latitudeCoordinate = latitude
            self.longitudeCoordinate = longitude
        }
        let regionDistance: CLLocationDistance = 1000
        let coordinates = CLLocationCoordinate2DMake(latitudeCoordinate, longitudeCoordinate)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center),
                       MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        let mapMarker =  MKPlacemark(coordinate: coordinates, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: mapMarker)
        mapItem.name = officeViewModel?.name
        mapItem.openInMaps(launchOptions: options)
    }
    
    private func openSharedApplication(with url: URL) {
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
    }
    
    private var longitude: Double? {
        guard let longitude = officeViewModel?.longitude else{ return 0.0}
        return Double(longitude)
    }
    
    private var latitude: Double? {
        guard let latitude = officeViewModel?.latitude else{ return 0.0}
        return Double(latitude)
    }
}
