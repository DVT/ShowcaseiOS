

import Foundation

protocol ContactUsInteractable {
    var dataReference: DataReferenceable? {get set}
    func retrieveContacts()
}

//protocol PresenterInteractable {
//    var loginPresenter: InteractorPresentable? { get set}
//    var userAuthenticator: Authenticating? { get set}
//    func signIn(withEmail email: String, password: String)
//}
