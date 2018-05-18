
import MapKit
import Foundation

class ContactUsNavigatorDelegateImplemetation: ContactUsNavigatorDelegate {
    func navigate(with latitude: Double, longitude: Double, branch: String, errorViewFrame: CGRect) {
        let errorView = ErrorView(frame: errorViewFrame)

        if latitude == 0.0 || longitude == 0.0 {
            errorView.onActionButtonTouched = {[weak self] in
                self?.navigate(with: latitude, longitude: longitude, branch: branch, errorViewFrame: errorViewFrame)
            }
            return
        } else {
            openMapApp(latitude: latitude, longitude: longitude, branch: branch)
        }
    }
    
   private func openMapApp(latitude: Double, longitude: Double, branch: String) {
        let regionDistance: CLLocationDistance = 1000
        let coordinates = CLLocationCoordinate2DMake(latitude, latitude)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center),
                       MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        let mapMarker =  MKPlacemark(coordinate: coordinates, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: mapMarker)
        mapItem.name = branch
        mapItem.openInMaps(launchOptions: options)
    }
}

