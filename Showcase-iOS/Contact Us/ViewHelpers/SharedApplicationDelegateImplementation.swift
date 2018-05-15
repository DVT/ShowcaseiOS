import UIKit
import Foundation

class SharedApplicationDelegateImplementation: SharedApplicationDelegate {
    func openSharedApplication(with url: URL) {
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
    }
}
