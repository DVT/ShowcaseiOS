//
//  LoginVC.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/07.
//  Copyright © 2018 DVT. All rights reserved.
//
import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var missingLoginDetailsLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var loginContainer: UIView!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginScrollView: UIScrollView!
    weak var keyBoardDelegate: KeyBoardDelegate!
    weak var keyBoardObserver: KeyboardObservable!
    weak var notificationCenter: NotificationCenterDelegate?
    var loginPresenter: LoginPresentable?
    var alertController: UIAlertController?
    let userDefaults = UserDefaults.standard
    let retryAction = UIAlertAction(title: "Retry", style: .destructive, handler: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        loginScrollView.keyboardDismissMode = .interactive
        alertController = UIAlertController(title: "Can't log you in", message: "", preferredStyle: .alert)
        alertController?.addAction(retryAction)
        emailTextField.delegate = self
        passwordTextField.delegate = self
        keyBoardDelegate = self
        keyBoardObserver = self
        notificationCenter = NotificationCenter.default
        loginPresenter?.showSuccesWhenUserIsAlreadyAuthenticated()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        keyBoardObserver.addObservers()
        keyBoardDelegate.hideKeyboardWhenTappedAround()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        keyBoardObserver.removeObservers()
    }
    
    @IBAction func didTapLoginButton(_ sender: Any) {
        guard let email = self.emailTextField.text else { return }
        guard let password = self.passwordTextField.text else { return}
        self.loginPresenter?.login(withEmail: email, password: password)
    }
    
    func showAlert(withTitle title: String,_ message: String) {
        alertController?.title = title
        alertController?.message = message
        present(alertController!, animated: true, completion: nil)
    }
}

extension LoginViewController: LoginPresenterViewable {
    
    func showEmailValidationFailure(withError error: AuthenticationError) {
        self.showAlert(withTitle: "Invalid email", "Please provide a valid email")
    }
    
    func showPasswordValidationFailure(withError error: AuthenticationError) {
        self.showAlert(withTitle:"Invalid password.", "Please provide a strong password.")
    }
    
    func showInvalidInputsFailure(withError error: AuthenticationError) {
        self.showAlert(withTitle:  "Invalid inputs." , "Please make sure that you've provided valid inputs for username and password.")
    }
    
    func showAuthenticationFailure(withMessage message: String?) {
        self.showAlert(withTitle: "Retry", message!)
    }
    
    func showSuccess() {
        let tabBarViewController = TabBarViewController.instantiate(fromAppStoryboard: .Main)
        let navigationController = UINavigationController(rootViewController:tabBarViewController)
        self.present(navigationController, animated: true, completion: nil)
    }
}

extension LoginViewController: KeyBoardDelegate {
    @objc func keyBoardDidShow(_ notification: Notification) {
        if let keyBoardHeight = (notification.userInfo![UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue.height {
            let heightFromButtonToTopTextField = CGFloat(170)
            let contentInset = updateContentInset(keyBoardHeight: keyBoardHeight + heightFromButtonToTopTextField)
            updateScrollViewContentInset(contentInset)
        }
    }
    
    @objc func keyBoardDidHide(_ notification: Notification) {
        let contentInset = updateContentInset(keyBoardHeight: 0)
        updateScrollViewContentInset(contentInset)
    }
    
    @objc func hideKeyboardWhenViewTapped() {
        view.endEditing(true)
    }
    
    func hideKeyboard(for textField: UITextField) {
       textField.resignFirstResponder()
    }
    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.hideKeyboardWhenViewTapped))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    func updateScrollViewContentInset(_ contentInset: UIEdgeInsets) {
        UIView.animate(withDuration: 0.5) {
            self.loginScrollView.contentInset = contentInset
        }
    }
    
    func updateContentInset(keyBoardHeight height: CGFloat) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: height, right: 0)
    }
    
}

extension LoginViewController: KeyboardObservable {
    
    func addObservers() {
        notificationCenter?.addObserver(self, selector: #selector(keyBoardDidShow(_:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        notificationCenter?.addObserver(self, selector: #selector(keyBoardDidHide(_:)), name: NSNotification.Name.UIKeyboardDidHide, object: nil)
    }
    
    func removeObservers() {
        notificationCenter?.removeObserver(self)
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        hideKeyboard(for: textField)
        return true
    }
}



