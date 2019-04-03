import UIKit

class LoginTextField: UITextField {

    // MARK: Properties

    private var insetValue: CGFloat = 10

    // MARK: Operation(s)

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(origin: bounds.origin, size: CGSize(width: bounds.width, height: bounds.height + insetValue))
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(origin: bounds.origin, size: CGSize(width: bounds.width, height: bounds.height + insetValue))
    }

}
