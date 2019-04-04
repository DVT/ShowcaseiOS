import UIKit

class AboutViewController: UIViewController {

    // MARK: Properties

    var aboutPresenter: AboutPresentable?
    var aboutViewModel: AboutViewModel?
    var firebaseStorage: FIRStoring?
    var errorView: ErrorView?
    let dependencyContainer = DependencyContainer.container()

    // MARK: @IBOutlet(s)

    @IBOutlet weak var loadingView: LoadingView!
    @IBOutlet weak var socialMediaStackView: UIStackView!

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "About"
        setupInjectables()
        aboutPresenter?.retrieveSocialMediaLinks()
    }

    // MARK: Opertaion(s)

    func setupInjectables() {
        let aboutPresenter = dependencyContainer.resolve(AboutPresentable.self) as? AboutPresenter
        let firebaseStorage = dependencyContainer.resolve(FIRStoring.self)
        self.aboutPresenter = aboutPresenter
        aboutPresenter?.aboutView = self
        aboutPresenter?.analyticManager = dependencyContainer.resolve(AnalyticsManager.self) as? AnalyticManagerImplementation
        self.firebaseStorage = firebaseStorage
    }

    func socialMediaButtonTap(with url: URL, and analyticTag: AnalyticTag) {
        aboutPresenter?.trackSocialMediaButtonTap(with: analyticTag)
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }

    // MARK: @IBAction(s)

    @IBAction func websiteTapped(_ sender: Any) {
        if let url = aboutViewModel?.website {
            socialMediaButtonTap(with: url, and: AnalyticTag.websiteButtonTap)
        }
    }

    @IBAction func twitterTapped(_ sender: Any) {
        if let url = aboutViewModel?.twitter {
            socialMediaButtonTap(with: url, and: AnalyticTag.twitterButtonTap)
        }
    }

    @IBAction func facebookTapped(_ sender: Any) {
        if let url = aboutViewModel?.facebook {
             socialMediaButtonTap(with: url, and: AnalyticTag.facebookButtonTap)
        }
    }

    @IBAction func instagramTapped(_ sender: Any) {
        if let url = aboutViewModel?.instagram {
             socialMediaButtonTap(with: url, and: AnalyticTag.instagramButtonTap)
        }
    }
}

// MARK: AboutPresenterViewable extension

extension AboutViewController: AboutPresenterViewable {

    func showOnSuccess(with aboutViewModel: AboutViewModel) {
        self.aboutViewModel = aboutViewModel
    }

    func hideOnFailure(with error: Error) {
        socialMediaStackView.removeFromSuperview()
    }

    func startLoadingAnimation() {
        loadingView.isHidden = false
    }

    func stopLoadingAnimation() {
        loadingView.isHidden = true
    }

}
