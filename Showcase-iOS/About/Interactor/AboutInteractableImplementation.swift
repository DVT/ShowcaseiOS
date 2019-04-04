import Foundation

class AboutInteractableImplementation: AboutInteractable {

    // MARK: Properties

    var aboutPresenter: AboutPresentable?
    var dataReference: DataReferenceable?

    // MARK: Opertaion(s)

    func retrieveSocialMediaLinks() {
        let databaseReference = FirebaseRetrieverableImplementation(reference: dataReference)
        databaseReference.fetchFirebaseData(from: .about) { (snapshot, error) in
            if let error = error {
                self.aboutPresenter?.onRetrieveSocialMediaLinksFailed(with: error)
            } else if let result = snapshot as? DataSnapshotProtocol {
                if result.value != nil {
                    let result = result.value as? [String: Any]
                    let links = SocialMediaLinks(with: result)
                    self.aboutPresenter?.onRetrieveSocialMediaLinksComplete(with: links)
                }
            }
        }
    }

}
