

import Foundation
import UIKit

class ContactUsViewController: UIViewController {
    var contactUsPresenter: ContactUsPresenter?
    var cellViewModel: ContactUsCellViewModel?
    var officeViewModels = [OfficeViewModel]()
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.topItem?.title = "Contact Us"
        registerContactUsCell()
        officeViewModels.append(mockValidOfficeResponse())
        collectionView.reloadData()
        //contactUsPresenter?.retrieveContacts()
    }
    
    func registerContactUsCell() {
        let contactUsNib  = UINib(nibName: ContactUsCollectionViewCell.identifier, bundle: nil)
        collectionView.register(contactUsNib, forCellWithReuseIdentifier: ContactUsCollectionViewCell.identifier)
    }
    
    
    func mockValidOfficeResponse() -> OfficeViewModel {
        let mockJhbOffice: [String: Any] = ["latitude":"-26.122743", "name":"Johannesburg","image":"offices/dvt_hyde_park.png",
                                            "googleMapsPlaceId":"ChIJF0f-kTdzlR4RioXEaM2-a10",
                                            "address":"Ground Floor,Victoria Gate South,Hyde Lane Office Park,Hyde Park Lane,Hydepark,Johannesburg,2196",
                                            "googleMapsName":"DVT Johannesburg",
                                            "emailAddress":"jvandermerwe@jhb.dvt.co.za",
                                            "longitude":"28.03149899999994",
                                            "telephone":"+2773444000"]
        return OfficeViewModel(with: Office(with: mockJhbOffice))
    }
}
extension ContactUsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.officeViewModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ContactUsCollectionViewCell.identifier, for: indexPath) as! ContactUsCollectionViewCell
        cellViewModel = ContactUsCellViewModel(with: officeViewModels[indexPath.row])
        cell.viewModel = cellViewModel
        cell.populateView()
        return cell
        
    }
}

extension ContactUsViewController: ContactUsPresenterViewable {
    func showOnSuccess(with officeViewModels: [OfficeViewModel]) {
        self.officeViewModels = officeViewModels
        collectionView.reloadData()
    }
    
    func showOnFailure(with error: Error) {
        //TO DO: Present error view
    }
    
    
}

