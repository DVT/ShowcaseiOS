
import Foundation
import Kingfisher

class MainDetailView: UIView {
    
    //MARK: @IBOutlets
    @IBOutlet private var contentView: UIView!
    @IBOutlet private weak var image: UIImageView!
    @IBOutlet private weak var productName: UILabel!
    @IBOutlet private weak var clientName: UILabel!
    @IBOutlet private weak var shortDescription: UILabel!
    //MARK: LifeCycle
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    //MARK: Operations
    
    private func commonInit() {
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: nil)
        contentView = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        addSubviewPinnedToEdges(contentView)
    }
    
    func populateView(with showcaseApp: ShowcaseAppViewModel?) {
        productName.text = showcaseApp?.name
        clientName.text = showcaseApp?.client
        shortDescription.text = showcaseApp?.shortDescription
        guard let imagePath = showcaseApp?.iconUrl else {return}
        populateImageView(with: imagePath)
    }
    
    private func populateImageView(with imagePath: String) {
        let dependencyContainer = DependencyContainer.container()
        guard let firStorage = dependencyContainer.resolve(FIRStoring.self) else {
            return
        }
        let imageFetcher = ImageFetcher(from: firStorage)
        imageFetcher.fetchImage(imagePath) {[weak self] (url, error) in
            if error != nil {
                self?.image.image = #imageLiteral(resourceName: "placeHolder")
            } else {
                guard let imageUrl = url else{return}
                let resource = ImageResource(downloadURL: imageUrl, cacheKey: imagePath)
                self?.image.kf.setImage(with: resource, placeholder: nil, options: nil, progressBlock: nil, completionHandler: nil)
            }
        }
    }
}

