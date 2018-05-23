

import Foundation
import UIKit

class ContactUsViewController: UIViewController {
    
    //MARK: Properties
    
    var contactUsPresenter: ContactUsPresentable?
    var cellViewModel: ContactUsCellViewModel?
    var officeViewModels = [OfficeViewModel]()
    var firebaseStorage: FIRStoring?
    
    //MARK: @IBOutlets
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCollectionView()
        registerContactUsCell()
        contactUsPresenter?.retrieveContacts()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.items?.first?.searchController = nil
        self.navigationController?.navigationBar.topItem?.title = "Contact Us"
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
    
    //MARK: MockData
    
    func mockValidOfficeResponse() -> OfficeViewModel {
        let mockJhbOffice: [String: Any] = ["latitude":"-26.1159126", "name":"Johannesburg","image":"offices/dvt_hyde_park.png",
                                            "googleMapsPlaceId":"ChIJF0f-kTdzlR4RioXEaM2-a10",
                                            "address":"Ground Floor,Victoria Gate South,Hyde Lane Office Park,Hyde Park Lane,Hydepark,Johannesburg,2196",
                                            "googleMapsName":"DVT Johannesburg",
                                            "emailAddress":"jvandermerwe@jhb.dvt.co.za",
                                            "longitude":"28.0328262",
                                            "telephone":"+2773444000"]
        return OfficeViewModel(with: Office(with: mockJhbOffice))
    }
}

//MARK: CollectionView extension

extension ContactUsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 236)
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
    func showOnSuccess(with officeViewModels: [OfficeViewModel]) {
        self.officeViewModels = officeViewModels
        collectionView.reloadData()
    }
    
    func showOnFailure(with error: Error) {
        //TO DO: Present error view
    }
    
    
}

