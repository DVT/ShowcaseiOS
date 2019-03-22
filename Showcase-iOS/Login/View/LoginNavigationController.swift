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
        var loginPresenter = dependencyContainer.resolve(LoginPresentable.self)
        loginPresenter?.loginViewer = loginViewController
        loginPresenter?.wireframe = dependencyContainer.resolve(WireframeDelegate.self)
        loginViewController?.loginPresenter = loginPresenter
        loginViewController?.sharedApplication = dependencyContainer.resolve(SharedApplicationDelegate.self)
    }

}
