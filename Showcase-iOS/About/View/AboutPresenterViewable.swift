import Foundation

protocol AboutPresenterViewable {
    func showOnSuccess(with aboutViewModel: AboutViewModel)
    func hideOnFailure(with error: Error)
    func startLoadingAnimation()
    func stopLoadingAnimation()
}
