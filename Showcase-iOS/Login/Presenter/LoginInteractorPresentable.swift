import Foundation

protocol LoginInteractorPresentable {
    func signedInSuccessfully()
    func failedToSign(withError error: Error)
}
