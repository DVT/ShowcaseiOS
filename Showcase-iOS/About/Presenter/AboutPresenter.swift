import Foundation
import UIKit

class AboutPresenter: AboutPresentable {

    // MARK: Injectable properties

    var aboutView: AboutPresenterViewable?
    var aboutInteractor: AboutInteractable?
    var analyticManager: AnalyticsManager?

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

    func openSocialMediaLink(with url: URL, and analyticTag: AnalyticTag) {
        analyticManager?.trackButtonTap(buttonName: analyticTag.rawValue)
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }

}
