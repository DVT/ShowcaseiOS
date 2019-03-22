import Foundation
import FirebaseAuth

class SignOutInteractor {

     // MARK: Proptertie(s)

    var userSignOut: UserSignOut?
    var homePresenter: HomePresentable?

     // MARK: Opertaion(s)

    func signOut() {
        do {
            try userSignOut?.signOut()
            homePresenter?.signedOut()
        } catch _ {}
    }

}
