import Foundation
import FirebaseAuth

class LoginPresenter: LoginPresentable {

    // MARK: Properties

    var userDefaults: UserDefaultsProtocol?
    var loginViewer: LoginPresenterViewable?
    var loginInteractor: LoginPresenterInteractable?
    var wireframe: WireframeDelegate?
    var analyticsManager: AnalyticsManager?
    let emailValidator = EmailValidator()
    let passwordValidator = PasswordValidator()

    // MARK: Operation(s)

    func login(withEmail email: String, password: String) {
        if emailValidator.isValid(email) && passwordValidator.isValid(password) {
            loginViewer?.startLoadingAnimation()
            loginInteractor?.signIn(withEmail: email, password: password)
        } else if (!emailValidator.isValid(email) && !passwordValidator.isValid(password)){
            loginViewer?.showInvalidInputsFailure(withError: AuthenticationError.invalidInputs)
        } else if !emailValidator.isValid(email) {
            loginViewer?.showEmailValidationFailure(withError: AuthenticationError.invalidEmail)
        } else if !passwordValidator.isValid(password) {
            loginViewer?.showPasswordValidationFailure(withError: AuthenticationError.invalidPassword)
        }
    }

    func showSuccesWhenUserIsAlreadyAuthenticated() {
        if let isUserAlreadyLoggedIn = userDefaults?.bool(forKey: UserDefaultsKeys.isLoggedIn.rawValue) {
            if isUserAlreadyLoggedIn {
                loginViewer?.showSuccess()
            }
        }
    }

    func openMailClient() {
        guard let loginViewController = loginViewer as? LoginViewController else {
            return
        }
        self.wireframe?.transitionToMailComposer(loginViewController)
    }

    func trackScreenDidAppear(with analyticTag: AnalyticTag) {
        analyticsManager?.trackScreenAppear(screenName: analyticTag.rawValue)
    }

    func trackLoginButtonTapped(with analyticTag: AnalyticTag) {
        analyticsManager?.trackButtonTap(buttonName: analyticTag.rawValue)
    }

}

// MARK: LoginInteractorPresentable extension

extension LoginPresenter: LoginInteractorPresentable {

    func signedInSuccessfully() {
        loginViewer?.stopLoadingAnimation()
        userDefaults?.set(value: true, forKey: UserDefaultsKeys.isLoggedIn.rawValue)
        loginViewer?.showSuccess()
    }

    func failedToSign(withError error: Error) {
        self.loginViewer?.stopLoadingAnimation()
        let authenticationError = AuthErrorCode(rawValue: error._code)
        loginViewer?.showAuthenticationFailure(withMessage: authenticationError?.errorMessage)
    }

}



