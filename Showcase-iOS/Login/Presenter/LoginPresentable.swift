import Foundation

protocol LoginPresentable {
    var loginViewer: LoginPresenterViewable? { get set}
    var loginInteractor: LoginPresenterInteractable? { get set}
    var userDefaults: UserDefaultsProtocol? { get set}
    var wireframe: WireframeDelegate? { get set}
    func showSuccesWhenUserIsAlreadyAuthenticated()
    func login(withEmail email: String, password: String)
    func openMailClient()
}
