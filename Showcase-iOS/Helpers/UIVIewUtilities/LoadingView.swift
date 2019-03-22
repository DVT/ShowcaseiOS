import UIKit

class LoadingView: UIView {

    // MARK: @IBOutlet(s)

    @IBOutlet var contentView: UIView!

    // MARK: Operation(s)
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        guard let view = Bundle.main.loadNibNamed("LoadingView", owner: self, options: nil)?.first as? UIView else { return }
        view.frame = self.bounds
        self.addSubview(view)
    }
}
