import Foundation
import UIKit
import MessageUI

class Wireframe: WireframeDelegate {

    func onMainThread(block: @escaping ()-> Void) {
        DispatchQueue.main.async(execute: block)
    }

    func transitionToShowcaseAppDetailView(_ controller:HomeViewController, with showcaseAppViewModel: ShowcaseAppViewModel) {
        self.onMainThread {
            let newController = ShowcaseAppDetailViewController.instantiate(fromAppStoryboard: .DetailView)
            newController.showcaseAppViewModel = showcaseAppViewModel
            controller.tabBarController?.tabBar.isHidden = true
            controller.navigationController?.pushViewController(newController, animated: true)
        }
    }

    func transitionToLoginView(_ controller:HomeViewController) {
        self.onMainThread {
            let newController = LoginNavigationController.instantiate(fromAppStoryboard: .Login)
            controller.present(newController, animated: true)
        }
    }

    func transitionToMailComposer(_ controller:LoginViewController) {
        self.onMainThread {
            let emailvalue = "mobile@dvt.co.za"
            let mailClient = MFMailComposeViewController()
            if MFMailComposeViewController.canSendMail() {
                mailClient.mailComposeDelegate = controller
                mailClient.setToRecipients([emailvalue])
                mailClient.setSubject("New User Registration")
                controller.present(mailClient, animated: true, completion: nil)
            } else {
                let emailValidator = EmailValidator()
                guard emailValidator.isValid(emailvalue) else { return }
                guard let emailAddress = URL(string: "mailto:\(emailvalue)") else { return }
                controller.sharedApplication?.openSharedApplication(with: emailAddress)
            }
        }
    }
}
