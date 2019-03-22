import Foundation

protocol HomePresenterViewable {
    func showOnSuccess(with showcaseApps: [ShowcaseAppViewModel])
    func showOnFailure(with error: DatabaseError)
    func startLoadingAnimation()
    func stopLoadingAnimation()
}
