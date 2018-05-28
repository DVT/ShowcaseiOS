

import Foundation
import UIKit

class FunctionalityView: UIView {
    
    //MARK: @IBOutlet
    
    @IBOutlet private var contentView: UIView!
    @IBOutlet private weak var functionality: UILabel!
    
    //MARK: Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: nil)
        contentView = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        addSubviewPinnedToEdges(contentView)
    }
    
    //MARK: Operations
    
    func populateView(with shoecaseApp: ShowcaseAppViewModel?) {
        functionality.text = shoecaseApp?.functionality
    }
    
}
