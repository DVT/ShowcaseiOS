
import UIKit
import Foundation


class TechnologyView: UIView {
    
    //MARK: @IBOutlets
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var technology: UILabel!
    
    //MARK: Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func commonInit() {
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: nil)
        contentView = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        addSubviewPinnedToEdges(contentView)
    }
    
    //MARK: Operations
    
    func populateView(with showcaseApp: ShowcaseApp?) {
        technology.text = showcaseApp?.technologyUsed
    }
    
    
}
