import Foundation

protocol FirebaseLoginAuthenticating {
    func signIn(withEmail email: String, password: String, completion: @escaping (AuthDataResultProtocol?, Error?) -> Void)
}
