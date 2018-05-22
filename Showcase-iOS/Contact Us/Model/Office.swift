

import Foundation
import Firebase

class Office {
    var address: String?
    var emailAddress: String?
    var googleMapsName: String?
    var googleMapsPlaceId: String?
    var image: String?
    var latitude: Double?
    var longitude: Double?
    var name: String?
    var telephone: String?
    
    init(with snapShotValue: [String: Any]?) {
        self.address = snapShotValue?["address"] as? String
        self.emailAddress = snapShotValue?["emailAddress"] as? String
        self.googleMapsName = snapShotValue?["googleMapsName"] as? String
        self.googleMapsPlaceId = snapShotValue?["googleMapsPlaceId"] as? String
        self.image = snapShotValue?["image"] as? String
        self.latitude = snapShotValue?["latitude"] as? Double
        self.longitude = snapShotValue?["longitude"] as? Double
        self.name = snapShotValue?["name"] as? String
        self.telephone = snapShotValue?["telephone"] as? String
    }
}
