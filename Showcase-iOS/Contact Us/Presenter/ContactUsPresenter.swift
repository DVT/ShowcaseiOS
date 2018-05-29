

import Foundation
import Firebase

class ContactUsPresenter: ContactUsPresentable {
    //MARK: Injectable Properties
    
    var contactUsInteractor: ContactUsInteractable?
    var contactUsView: ContactUsPresenterViewable?
    
    //MARK: Properties
    
    
    //MARK: Operations
    
    func onRetrieveOfficesComplete(with offices: [Office]) {
        var officeViewModels: [OfficeViewModel] = [OfficeViewModel]()
        offices.forEach { (office) in
            let officeViewModel = OfficeViewModel(with: office)
            officeViewModels.append(officeViewModel)
        }
        contactUsView?.stopLoadingAnimation()
        contactUsView?.showOnSuccess(with: officeViewModels)
    }
    
    func onRetrieveOfficesFailed(with error: Error) {
        contactUsView?.stopLoadingAnimation()
        contactUsView?.showOnFailure(with: error)
    }
    
    func retrieveContacts() {
        contactUsView?.startLoadingAnimation()
        contactUsInteractor?.retrieveContacts()
    }
    
}

