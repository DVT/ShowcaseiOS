import UIKit

class TabBarViewController: UITabBarController {

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupNavigationBarColorPallete()
    }

    // MARK: Operation(s)

    func setupNavigationBarColorPallete() {
        let navigationBar = UINavigationBar.appearance()
        navigationBar.tintColor = .DvtBlueColor
        navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor.DvtBlueColor]
    }

}

