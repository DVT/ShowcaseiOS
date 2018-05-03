

import Foundation
import Firebase

class Office {
    var address = ""
    var emailAddress = ""
    var googleMapsName = ""
    var googleMapsPlaceId = ""
    var image = ""
    var latitude = ""
    var longitude = ""
    var name = ""
    var telephone = ""
    
    init(with snapShot: DataSnapshot?) {
        if let snapShotValue = snapShot?.value as? [String: Any] {
            if let address = snapShotValue["address"] as? String { self.address = address}
            if let emailAddress = snapShotValue["emailAddress"] as? String { self.emailAddress = emailAddress}
            if let googleMapsName = snapShotValue["googleMapsName"] as? String { self.googleMapsName = googleMapsName}
            if let googleMapsPlaceId = snapShotValue["googleMapsPlaceId"] as? String { self.googleMapsPlaceId = googleMapsPlaceId}
            if let image = snapShotValue["image"] as? String { self.image = image}
            if let latitude = snapShotValue["latitude"] as? String { self.latitude = latitude}
            if let longitude = snapShotValue["longitude"] as? String { self.longitude = longitude}
            if let name = snapShotValue["name"] as? String { self.name = name}
            if let telephone = snapShotValue["telephone"] as? String { self.telephone = telephone}
        }
    }
}
