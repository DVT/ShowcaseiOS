

import Foundation
import UIKit

protocol ContactUsNavigatorDelegate {
    func navigate(with latitude: Double, longitude: Double, branch: String, errorViewFrame: CGRect)
}
