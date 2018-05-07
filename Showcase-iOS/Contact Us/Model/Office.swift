

import Foundation
import Firebase

class Office {
    var address: String?
    var emailAddress: String?
    var googleMapsName: String?
    var googleMapsPlaceId: String?
    var image: String?
    var latitude: String?
    var longitude: String?
    var name: String?
    var telephone: String?
    
    init(with snapShotValue: [String: Any]?) {
        if let snapShotValue = snapShotValue {
        self.address = snapShotValue["address"] as? String
        self.emailAddress = snapShotValue["emailAddress"] as? String
        self.googleMapsName = snapShotValue["googleMapsName"] as? String
        self.googleMapsPlaceId = snapShotValue["googleMapsPlaceId"] as? String
        self.image = snapShotValue["image"] as? String
        self.latitude = snapShotValue["latitude"] as? String
        self.longitude = snapShotValue["longitude"] as? String
        self.name = snapShotValue["name"] as? String
        self.telephone = snapShotValue["telephone"] as? String
        }
    }
}
