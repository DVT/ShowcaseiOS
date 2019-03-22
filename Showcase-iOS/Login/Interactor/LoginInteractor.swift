import Foundation

class LoginInteractor: LoginPresenterInteractable {

     // MARK: Proptertie(s)

    var loginPresenter: LoginInteractorPresentable?
    var userAuthenticator: LoginAuthenticating?

     // MARK: Operation(s)

    func signIn(withEmail email: String, password: String) {
        self.userAuthenticator?.signIn(withEmail: email, password: password) { [weak self] (user, error) in
            if let error = error {
                self?.loginPresenter?.failedToSign(withError: error)
            } else if let _ = user {
                self?.loginPresenter?.signedInSuccessfully()
            }
        }
    }

}


