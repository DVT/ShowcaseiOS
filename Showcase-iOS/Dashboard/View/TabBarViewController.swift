import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupNavigationBarColorPallete()
    }

    func setupNavigationBarColorPallete() {
        let navigationBar = UINavigationBar.appearance()
        navigationBar.tintColor = .DvtBlueColor
        navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor.DvtBlueColor]
    }

}

