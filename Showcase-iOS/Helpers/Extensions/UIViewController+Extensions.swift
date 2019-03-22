import Foundation
import UIKit

extension UIViewController {

    class var storyBoardID: String {
        return "\(self)"
    }

    static func instantiate(fromAppStoryboard appStoryboard: AppStoryBoard) -> Self {
        return appStoryboard.viewController(viewControllerClass: self)
    }

}
