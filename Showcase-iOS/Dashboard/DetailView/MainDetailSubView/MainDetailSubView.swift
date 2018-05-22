
import Foundation
import Kingfisher

class MainDetailSubView: UIView {
    
    //MARK: @IBOutlets
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var clientName: UILabel!
    @IBOutlet weak var shortDescription: UILabel!
    
    //MARK: Properties
    var firebaseStorage: FIRStoring?
    
    //MARK: LifeCycle
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    private func commonInit() {
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: nil)
        contentView = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        addSubviewPinnedToEdges(contentView)
    }
    
    func populateView(with showcaseApp: ShowcaseApp?) {
       
        productName.text = showcaseApp?.client //TODO: Update Showcase app model eith name and use name here as the pro
        clientName.text = showcaseApp?.client
        shortDescription.text = showcaseApp?.shortDescription
        guard let imagePath = showcaseApp?.iconUrl else {return}
        populateImageView(with: imagePath)
    }
    
    private func populateImageView(with imagePath: String) {
        guard let firStorage = self.firebaseStorage else { return }
        let imageFetcher = ImageFetcher(from: firStorage)
        imageFetcher.fetchImage(imagePath) {[weak self] (url, error) in
            if error != nil {
                //TODO add place holder image
            } else {
                guard let imageUrl = url else{return}
                let resource = ImageResource(downloadURL: imageUrl, cacheKey: imagePath)
                self?.image.kf.setImage(with: resource, placeholder: nil, options: nil, progressBlock: nil, completionHandler: nil)
            }
        }
    }
}

