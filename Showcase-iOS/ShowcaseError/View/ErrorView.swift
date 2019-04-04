import UIKit

class ErrorView: UIView {

    // MARK: @IBOutlet(s)

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var actionButton: UIButton!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var title: UILabel!

    // MARK: @IBAction(s)

    @IBAction func retryPressed(_ sender: Any) {
        onActionButtonTouched?()
    }

    // MARK: Properties

    var errorMessage: String = "" {
        didSet {
            title.textColor = UIColor.DvtBlueColor
            message.textColor = UIColor.gray
            message.text = errorMessage
        }
    }

    var onActionButtonTouched: (() -> Void)? {
        didSet {
            actionButton.isHidden = onActionButtonTouched == nil
        }
    }

    // MARK: Lifecycle

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    func commonInit() {
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: nil)
        if let contentView = nib.instantiate(withOwner: self, options: nil)[0] as? UIView {
             addSubviewPinnedToEdges(contentView)
        }
        actionButton.roundCorners()
    }
    
}
