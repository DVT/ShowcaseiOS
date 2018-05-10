//
//  LoginVC.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/07.
//  Copyright © 2018 DVT. All rights reserved.
//
import Foundation
import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var missingLoginDetailsLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var loginContainer: UIView!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginScrollView: UIScrollView!
    weak var keyBoardDelegate: KeyBoardDelegate!
    weak var keyBoardObserver: KeyboardObservable!
    weak var notificationCenter: NotificationCenterDelegate?
    
    // TODO: Use Swinject to Inject a concrete NotificationCenter
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTextField.delegate = self
        passwordTextField.delegate = self
        keyBoardDelegate = self
        keyBoardObserver = self
        loginScrollView.keyboardDismissMode = .interactive
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
}

extension LoginVC: KeyBoardDelegate {
    
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

extension LoginVC: KeyboardObservable {
    
    func addObservers() {
        notificationCenter?.addObserver(self, selector: #selector(keyBoardWillShow(_:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        notificationCenter?.addObserver(self, selector: #selector(keyBoardWillShow(_:)), name: NSNotification.Name.UIKeyboardDidHide, object: nil)
    }
    
    func removeObservers() {
        notificationCenter?.removeObserver(self)
    }
}

extension LoginVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        hideKeyboard(for: textField)
        return true
    }
}


