import Foundation

protocol LoginPresenterInteractable {
    var loginPresenter: LoginInteractorPresentable? { get set}
    var userAuthenticator: LoginAuthenticating? { get set}
    func signIn(withEmail email: String, password: String)
}
