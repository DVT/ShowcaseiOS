
import Foundation
import Firebase

class ContactUsInteractableImplementation: ContactUsInteractable {

    // MARK: Properties

    var contactUsPresenter: ContactUsPresentable?
    var dataReference: DataReferenceable?

    // MARK: Operation(s)

    func retrieveContacts() {
        var offices: [Office] = [Office]()
        let databaseReference = FirebaseRetrieverableImplementation(reference: dataReference)
        databaseReference.fetchFirebaseData(from: .office) { (snapshot, error) in
            if let error = error {
                self.contactUsPresenter?.onRetrieveOfficesFailed(with: error)
            } else if let result = snapshot as? DataSnapshotProtocol {
                if result.value != nil {
                    let office = result.value as? [String: Any]
                    offices.append(Office(with: office))
                }                
                self.contactUsPresenter?.onRetrieveOfficesComplete(with: offices)
            }
        }
    }

}


