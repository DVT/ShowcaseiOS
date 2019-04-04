import UIKit

class ShowcaseAppDetailViewController: UIViewController {

    // MARK: IBOutlet(s)

    @IBOutlet private weak var scrollView:UIScrollView!
    @IBOutlet private weak var mainDetailSubView:UIView!
    @IBOutlet private weak var functionalityView:UIView!
    @IBOutlet private weak var screenshotsView:UIView!
    @IBOutlet weak var screenShotsScrollView: UICollectionView!

    // MARK: Properties

    var showcaseAppViewModel: ShowcaseAppViewModel?
    var screenshots = [String]()

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.screenShotsScrollView.delegate = self
        self.screenShotsScrollView.dataSource = self
        self.registerScreenshotsCell()
        self.initViews()
        self.title = showcaseAppViewModel?.name        
    }

    // MARK: Opertaion(s)

    func initViews() {
        self.view.translatesAutoresizingMaskIntoConstraints = true
        let main = MainDetailView(frame: mainDetailSubView.bounds)
        main.showcaseApp = showcaseAppViewModel
        let dependencyContainer = DependencyContainer.container()
        main.mainDetailViewModel = dependencyContainer.resolve(MainDetailViewCellDelegate.self)
        main.mainDetailViewModel?.sharedApplication = dependencyContainer.resolve(SharedApplicationDelegate.self)
        mainDetailSubView.addSubviewPinnedToEdges(main)
        let functionality = FunctionalityView(frame: functionalityView.bounds)
        functionality.populateView(with: showcaseAppViewModel)
        functionalityView.addSubviewPinnedToEdges(functionality)
        guard let screenshots = showcaseAppViewModel?.screenshots, screenshots.count > 0 else {
            self.removeScreenshotView()
            return
        }
        self.screenshots = screenshots
        self.screenShotsScrollView.reloadData()
    }

    func removeScreenshotView() {
        self.screenshotsView.removeFromSuperview()
        let top = NSLayoutConstraint(item: functionalityView,
                                     attribute:.top, relatedBy: .equal,
                                     toItem: mainDetailSubView, attribute: .bottom,
                                     multiplier: 1.0, constant: 0)
        self.view.addConstraint(top)
    }

    func registerScreenshotsCell() {
        let nib = UINib(nibName: "ScreenshotCollectionViewCell", bundle: nil)
        self.screenShotsScrollView?.register(nib, forCellWithReuseIdentifier: "ScreenshotCollectionViewCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

// MARK: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout extensions

extension ShowcaseAppDetailViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return screenshots.count
    }

    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ScreenshotCollectionViewCell", for: indexPath) as! ScreenshotCollectionViewCell
        cell.populateImageView(with: screenshots[indexPath.row])
        return cell
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 3.0
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section:Int) -> CGFloat {
        return 3.0
    }

}

