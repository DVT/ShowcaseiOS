//
//  KeyBoardDelegate.swift
//  Showcase-iOSTests
//
//  Created by Lehlohonolo Mbele on 2018/05/10.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import UIKit

protocol KeyBoardDelegate: class {
    func keyBoardWillShow(_ notification: Notification)
    func keyBoardWillHide(_ notification: Notification)
    func hideKeyboardWhenViewTapped()
    func hideKeyboard(for textField: UITextField)
    func hideKeyboardWhenTappedAround()
    func updateScrollViewContentInset(_ contentInset: UIEdgeInsets)
    func updateContentInset(keyBoardHeight height: CGFloat) -> UIEdgeInsets
}
