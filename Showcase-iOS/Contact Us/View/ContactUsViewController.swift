

import Foundation
import UIKit

class ContactUsViewController: UIViewController {
    
    //MARK: Properties
    
    var contactUsPresenter: ContactUsPresentable?
    var cellViewModel: ContactUsCellViewModel?
    var officeViewModels = [OfficeViewModel]()
    var firebaseStorage: FIRStoring?
    var errorView: ErrorView?
    let dependencyContainer = DependencyContainer.container()
    
    //MARK: @IBOutlets
    
    @IBOutlet weak var loadingView: LoadingView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Contact"
        setupInjectables()
        setCollectionView()
        registerContactUsCell()
        contactUsPresenter?.retrieveContacts()
    }
    
    func setupInjectables() {
        let contactUsPresenter = dependencyContainer.resolve(ContactUsPresentable.self) as! ContactUsPresenter
        let firebaseStorage = dependencyContainer.resolve(FIRStoring.self)
        self.contactUsPresenter = contactUsPresenter
        contactUsPresenter.contactUsView = self
        self.firebaseStorage = firebaseStorage
    }
    
    //MARK: Operations
    
    func setCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    func registerContactUsCell() {
        let contactUsNib  = UINib(nibName: ContactUsCollectionViewCell.identifier, bundle: nil)
        collectionView.register(contactUsNib, forCellWithReuseIdentifier: ContactUsCollectionViewCell.identifier)
    }
}

//MARK: CollectionView extension

extension ContactUsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 255)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section:Int) -> CGFloat {
        return 2.0
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.officeViewModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ContactUsCollectionViewCell.identifier, for: indexPath) as! ContactUsCollectionViewCell
        cellViewModel = ContactUsCellViewModel(with: officeViewModels[indexPath.row])
        cell.viewModel = cellViewModel
        cell.viewModel?.sharedApplication = SharedApplicationDelegateImplementation()
        cell.viewModel?.contactUsNavigator = ContactUsNavigatorDelegateImplemetation()
        cell.firebaseStorage = firebaseStorage
        cell.populateView()
        return cell
        
    }
}

//MARK: Extension Presentable

extension ContactUsViewController: ContactUsPresenterViewable {
    func startLoadingAnimation() {
        loadingView.isHidden = false
    }
    
    func stopLoadingAnimation() {
        loadingView.isHidden = true
    }
    
    func showOnSuccess(with officeViewModels: [OfficeViewModel]) {
        self.officeViewModels = officeViewModels
        collectionView.reloadData()
    }
    
    func showOnFailure(with error: Error) {
        errorView = ErrorView(frame: self.view.bounds)
        errorView?.message.text = error.localizedDescription
        errorView?.onActionButtonTouched = {[weak self] in
            self?.contactUsPresenter?.retrieveContacts()
            self?.errorView?.removeFromSuperview()
        }
        self.view.addSubviewPinnedToEdges(errorView!)
    }

}

