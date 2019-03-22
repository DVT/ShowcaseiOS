import Foundation
import UIKit

protocol WireframeDelegate {
    func transitionToShowcaseAppDetailView(_ controller:HomeViewController, with showcaseAppViewModel: ShowcaseAppViewModel)
    func transitionToLoginView(_ controller:HomeViewController)
    func transitionToMailComposer(_ controller:LoginViewController)
}
