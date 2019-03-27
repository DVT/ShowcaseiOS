import Foundation

protocol AboutPresentable {
    func onRetrieveSocialMediaLinksComplete(with links: SocialMediaLinks)
    func onRetrieveSocialMediaLinksFailed(with error: Error)
    func retrieveSocialMediaLinks()
    func trackSocialMediaButtonTap(with analyticTag: AnalyticTag)
}
