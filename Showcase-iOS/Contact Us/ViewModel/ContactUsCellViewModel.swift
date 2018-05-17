

import Foundation
import UIKit
import MapKit

class ContactUsCellViewModel: ContactUsDelegate {
    
    //MARK: Properties
    
    var sharedApplication: SharedApplicationDelegate?
    var officeViewModel: OfficeViewModel?
    var emailValidator = EmailValidator()
    
    var longitude: Double? {
        guard let longitudeCoordinate = officeViewModel?.longitude else { return 0.0 }
        return Double(longitudeCoordinate)
    }
    
    var latitude: Double? {
        guard let latitudeCoordinate = officeViewModel?.latitude else { return 0.0 }
        return Double(latitudeCoordinate)
    }
    
    var branch: String? {
        guard let branchName = officeViewModel?.name else {return ""}
        return branchName
    }
    
    var locationDescription: String? {
        guard let description = officeViewModel?.address else {return ""}
        return description
    }
    
    //MARK: Lifecycle
    
    init(with officeViewModel: OfficeViewModel?) {
        self.officeViewModel = officeViewModel
    }
    
    //MARK: Operations
    
    func call() {
        guard let telephone = officeViewModel?.telephoneNumber else {return}
        let telephoneUrl = URL(string: telephone)
        sharedApplication?.openSharedApplication(with: telephoneUrl!)
    }
    
    func email() {
        guard let emailAddress = officeViewModel?.emailAddress else {return}
        let email = URL(string: emailAddress)
        if emailValidator.isValid(emailAddress) {
            sharedApplication?.openSharedApplication(with: email!)
        }
    }
    
   
}

