import Foundation
import FirebaseAuth

class SignOut: UserSignOut {
    
     // MARK: Proptertie(s)
    var firebaseSignOut: FirebaseSignOut

     // MARK: Opertaions

    init(_ firebaseSignOut: FirebaseSignOut) {
        self.firebaseSignOut = firebaseSignOut
    }

    func signOut() throws {
        try self.firebaseSignOut.signOut()
    }

}
