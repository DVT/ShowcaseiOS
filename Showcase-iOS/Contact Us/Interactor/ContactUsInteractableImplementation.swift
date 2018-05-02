
import Foundation
import Firebase

class ContactUsInteractableImplementation: ContactUsInteractable {
    
    var contactUsPresenter: ContactUsPresentable
    var dataReference: DataReferenceable?
    
    init(with contactUsPresenter: ContactUsPresentable,_ dataRefence: DataReferenceable?) {
        self.dataReference = dataRefence
        self.contactUsPresenter = contactUsPresenter
    }
    
    func retrieveContacts() {
        var offices: [Office] = [Office]()
        guard let dataReference = dataReference else {return }
        let databaseReference = FirebaseRetrieverableImplementation(reference: dataReference)
        databaseReference.fetchData(from: .contacts) { (snapshot, error) in
            if let error = error {
                self.contactUsPresenter.onRetrieveOfficesFailed(with: error)
            } else if let result = snapshot as? DataSnapshot {
                offices = result.children.map({ Office(with: $0 as? DataSnapshot)})
                self.contactUsPresenter.onRetrieveOfficesComplete(with: offices)
            }
        }
    }
}

