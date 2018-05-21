
import MapKit
import Foundation

class ContactUsNavigatorDelegateImplemetation: ContactUsNavigatorDelegate {
    
    func navigate(with latitude: Double, longitude: Double, branch: String) {
        openMapApp(latitude: latitude, longitude: longitude, branch: branch)
    }
    
    private func openMapApp(latitude: Double, longitude: Double, branch: String) {
        let regionDistance: CLLocationDistance = 1000
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center),
                       MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        let mapMarker =  MKPlacemark(coordinate: coordinates, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: mapMarker)
        mapItem.name = branch
        mapItem.openInMaps(launchOptions: options)
    }
}

