

import Foundation

protocol ContactUsInteractable {
    var dataReference: DataReferenceable? { get set}
    var contactUsPresenter: ContactUsPresentable{get set}
    func retrieveContacts() 
}

