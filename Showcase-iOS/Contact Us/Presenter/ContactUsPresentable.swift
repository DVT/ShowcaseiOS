
import Foundation

protocol ContactUsPresentable {
    func onRetrieveOfficesComplete(with offices: [Office])
    func onRetrieveOfficesFailed(with error: Error)
    func retrieveContacts()
}
