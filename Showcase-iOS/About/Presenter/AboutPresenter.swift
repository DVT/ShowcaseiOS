import Foundation

class AboutPresenter: AboutPresentable {

    // MARK: Injectable Properties

    var aboutView: AboutPresenterViewable?
    var aboutInteractor: AboutInteractable?

    // MARK: Operations

    func onRetrieveSocialMediaLinksComplete(with links: SocialMediaLinks) {
        let aboutViewModel = AboutViewModel(socialMediaLinks: links)
        aboutView?.stopLoadingAnimation()
        aboutView?.showOnSuccess(with: aboutViewModel)
    }

    func onRetrieveSocialMediaLinksFailed(with error: Error) {
        aboutView?.stopLoadingAnimation()
    }

    func retrieveSocialMediaLinks() {
        aboutView?.startLoadingAnimation()
        aboutInteractor?.retrieveSocialMediaLinks()
    }

}
