import Foundation
import UIKit

enum AppStoryBoard: String {

    case Login, Main, Home, About, Contact, DetailView

    var instance: UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
    }

    func viewController<T: UIViewController>(viewControllerClass: T.Type) -> T {
        let storyBoardID = viewControllerClass.storyBoardID
        return instance.instantiateViewController(withIdentifier: storyBoardID) as! T
    }

}
