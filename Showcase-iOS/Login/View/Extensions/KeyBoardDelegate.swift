import Foundation
import UIKit

protocol KeyBoardDelegate: class {
    func keyBoardDidShow(_ notification: Notification)
    func keyBoardDidHide(_ notification: Notification)
    func hideKeyboardWhenViewTapped()
    func hideKeyboard(for textField: UITextField)
    func hideKeyboardWhenTappedAround()
    func updateScrollViewContentInset(_ contentInset: UIEdgeInsets)
    func updateContentInset(keyBoardHeight height: CGFloat) -> UIEdgeInsets
}
