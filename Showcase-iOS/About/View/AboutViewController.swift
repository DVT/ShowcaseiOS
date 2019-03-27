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

    // MARK: @IBActions

    @IBAction func websiteTapped(_ sender: Any) {
        aboutPresenter?.trackSocialMediaButtonTap(with: "website")
        if let websiteUrl = aboutViewModel?.website {
            UIApplication.shared.open(websiteUrl, options: [:], completionHandler: nil)
        }
    }

    @IBAction func twitterTapped(_ sender: Any) {
        aboutPresenter?.trackSocialMediaButtonTap(with: "twitter")
        if let twitterUrl = aboutViewModel?.twitter {
            UIApplication.shared.open(twitterUrl, options: [:], completionHandler: nil)
        }
    }

    @IBAction func facebookTapped(_ sender: Any) {
        aboutPresenter?.trackSocialMediaButtonTap(with: "facebook")
        if let facebookUrl = aboutViewModel?.facebook {
            UIApplication.shared.open(facebookUrl, options: [:], completionHandler: nil)
        }
    }

    @IBAction func instagramTapped(_ sender: Any) {
        aboutPresenter?.trackSocialMediaButtonTap(with: "instagram")
        if let instagramUrl = aboutViewModel?.instagram {
            UIApplication.shared.open(instagramUrl, options: [:], completionHandler: nil)
        }
    }
}

// MARK: Extension Presentable

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
