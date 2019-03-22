import UIKit

class AboutViewController: UIViewController {

    // MARK: Properties

    var aboutPresenter: AboutPresentable?
    var aboutViewModel: AboutViewModel?
    var firebaseStorage: FIRStoring?
    var analyticsManager: AnalyticsManager?
    var errorView: ErrorView?
    let dependencyContainer = DependencyContainer.container()

    // MARK: @IBOutlets

    @IBOutlet weak var loadingView: LoadingView!
    @IBOutlet weak var socialMediaStackView: UIStackView!

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "About"
        setupInjectables()
        aboutPresenter?.retrieveSocialMediaLinks()
        analyticsManager?.trackScreenAppear(screenName: "about")
    }

    // MARK: Opertaions

    func setupInjectables() {
        let aboutPresenter = dependencyContainer.resolve(AboutPresentable.self) as? AboutPresenter
        let firebaseStorage = dependencyContainer.resolve(FIRStoring.self)
        self.aboutPresenter = aboutPresenter
        aboutPresenter?.aboutView = self
        self.firebaseStorage = firebaseStorage
        self.analyticsManager = dependencyContainer.resolve(AnalyticsManager.self)
    }

    // MARK: @IBActions

    @IBAction func websiteTapped(_ sender: Any) {
        analyticsManager?.trackButtonTap(buttonName: "website")
        if let websiteUrl = aboutViewModel?.website {
            UIApplication.shared.open(websiteUrl, options: [:], completionHandler: nil)
        }
    }

    @IBAction func twitterTapped(_ sender: Any) {
        analyticsManager?.trackButtonTap(buttonName: "twitter")
        if let twitterUrl = aboutViewModel?.twitter {
            UIApplication.shared.open(twitterUrl, options: [:], completionHandler: nil)
        }
    }

    @IBAction func facebookTapped(_ sender: Any) {
        analyticsManager?.trackButtonTap(buttonName: "facebook")
        if let facebookUrl = aboutViewModel?.facebook {
            UIApplication.shared.open(facebookUrl, options: [:], completionHandler: nil)
        }
    }

    @IBAction func instagramTapped(_ sender: Any) {
        analyticsManager?.trackButtonTap(buttonName: "instagram")
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
