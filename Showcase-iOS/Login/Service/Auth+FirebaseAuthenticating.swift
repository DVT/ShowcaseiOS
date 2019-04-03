import Foundation
import FirebaseAuth

extension Auth: FirebaseLoginAuthenticating {
    func signIn(withEmail email: String, password: String, completion: @escaping (AuthDataResultProtocol?, Error?) -> Void) {
        let completion = completion as AuthDataResultCallback
        self.signIn(withEmail: email, password: password, completion: completion)
    }
}
