import Foundation
import FirebaseAuth

class UserAuthentication: LoginAuthenticating {

    // MARK: Properties

    var authenticator: FirebaseLoginAuthenticating

    // MARK: Operation(s)

    init(_ authenticator: FirebaseLoginAuthenticating) {
        self.authenticator = authenticator
    }

    func signIn(withEmail email: String, password: String, completion: @escaping (AuthDataResultProtocol?, Error?) -> Void) {
        authenticator.signIn(withEmail: email, password: password) { (user, error) in
            completion(user,error)
        }
    }

}
