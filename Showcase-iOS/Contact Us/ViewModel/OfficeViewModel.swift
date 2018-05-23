

import Foundation

class OfficeViewModel {
    
    //MARK: Properties
    
    var office: Office
    
    var name: String? {
        return office.name
    }
    
    var telephoneNumber: String? {
        return office.telephone
    }
    
    var address: String? {
        return office.address
    }
    
    var emailAddress: String? {
        return office.emailAddress
    }
    
    var googleMapsName: String? {
        return office.googleMapsName
    }
    
    var googleMapsPlaceId: String? {
        return office.googleMapsPlaceId
    }
    
    var imageUrl: String? {
        return office.image
    }
    
    var latitude: Double? {
        return office.latitude
    }
    
    var longitude: Double? {
        return office.longitude
    }
    
    //MARK: Lifecycle Method(s)
    
    init(with office: Office) {
        self.office = office
    }

}
