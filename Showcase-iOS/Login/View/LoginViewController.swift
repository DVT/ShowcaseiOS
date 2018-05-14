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
    let retryAction = UIAlertAction(title: "Retry", style: .destructive, handler: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.delegate = self
        passwordTextField.delegate = self
        keyBoardDelegate = self
        keyBoardObserver = self
        loginScrollView.keyboardDismissMode = .interactive
        alertController = UIAlertController(title: "Can't log you in", message: "", preferredStyle: .alert)
        alertController?.addAction(retryAction)
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
    
}

extension LoginViewController: KeyBoardDelegate {
    
    @objc func keyBoardWillShow(_ notification: Notification) {
        if let keyBoardHeight = (notification.userInfo![UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue.height {
            let contentInset = updateContentInset(keyBoardHeight: keyBoardHeight)
            updateScrollViewContentInset(contentInset)
        }
    }
    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.hideKeyboardWhenViewTapped))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func hideKeyboardWhenViewTapped() {
        view.endEditing(true)
    }
    
    @objc func keyBoardWillHide(_ notification: Notification) {
        let contentInset = updateContentInset(keyBoardHeight: 0)
        updateScrollViewContentInset(contentInset)
    }
    
    func hideKeyboard(for textField: UITextField) {
       textField.resignFirstResponder()
    }
    
    func updateScrollViewContentInset(_ contentInset: UIEdgeInsets) {
        loginScrollView.contentInset = contentInset
    }
    
    func updateContentInset(keyBoardHeight height: CGFloat) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: height, right: 0)
    }
    
}

extension LoginViewController: LoginPresenterViewable {
    
    func showEmailValidationFailure(withError error: AuthenticationError) {
        alertController?.title = "Invalid email."
        alertController?.message = "Please provide a valid email."
        present(alertController!, animated: true, completion: nil)
    }
    
    func showPasswordValidationFailure(withError error: AuthenticationError) {
        alertController?.title = "Invalid password."
        alertController?.message = "Please provide a strong password."
        present(alertController!, animated: true, completion: nil)
    }
    
    func showInvalidInputsFailure(withError error: AuthenticationError) {
        alertController?.title = "Invalid inputs."
        alertController?.message = "Please make sure that you've provided valid inputs for username and password."
        present(alertController!, animated: true, completion: nil)
    }
    
    func showAuthenticationFailure(withMessage message: String?) {
        alertController?.message = message
        present(alertController!, animated: true, completion: nil)
    }
    
    func showSuccess() {
        
    }
    
}

extension LoginViewController: KeyboardObservable {
    
    func addObservers() {
        notificationCenter?.addObserver(self, selector: #selector(keyBoardWillShow(_:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        notificationCenter?.addObserver(self, selector: #selector(keyBoardWillShow(_:)), name: NSNotification.Name.UIKeyboardDidHide, object: nil)
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


