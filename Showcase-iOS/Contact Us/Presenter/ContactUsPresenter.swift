

import Foundation
import Firebase

class ContactUsPresenter: ContactUsPresentable {
    //MARK: Injectable Properties
    
    var contactUsInteractor: ContactUsInteractable?
    var contactUsView: ContactUsPresenterViewable?
    
    //MARK: Properties
    
    var officeViewModels: [OfficeViewModel] = [OfficeViewModel]()
    
    //MARK: Operations
    
    func onRetrieveOfficesComplete(with offices: [Office]) {
        offices.forEach { (office) in
            let officeViewModel = OfficeViewModel(with: office)
            officeViewModels.append(officeViewModel)
        }
        contactUsView?.showOnSuccess(with: officeViewModels)
    }
    
    func onRetrieveOfficesFailed(with error: Error) {
        contactUsView?.showOnFailure(with: error)
    }
    
    func retrieveContacts() {
        contactUsInteractor?.retrieveContacts()
    }
    
}

