import UIKit

class LoginNavigationController: UINavigationController {

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.initializeLoginView()
    }

    // MARK: Opertaion(s)
    
    func initializeLoginView() {
        let loginViewController = self.viewControllers.first as? LoginViewController
        let dependencyContainer = DependencyContainer.container()
        if let loginPresenter = dependencyContainer.resolve(LoginPresentable.self) as? LoginPresenter {
            loginPresenter.loginViewer = loginViewController
            loginPresenter.wireframe = dependencyContainer.resolve(WireframeDelegate.self)
            loginViewController?.loginPresenter = loginPresenter
            if let analyticsManager =
                dependencyContainer.resolve(AnalyticsManager.self) as? AnalyticManagerImplementation {
                 loginPresenter.analyticsManager = analyticsManager
            }
        }
         loginViewController?.sharedApplication = dependencyContainer.resolve(SharedApplicationDelegate.self)
    }
}
