import Foundation

protocol LoginAuthenticating {
    func signIn(withEmail email: String, password: String, completion: @escaping (AuthDataResultProtocol?, Error?) -> Void)
}
