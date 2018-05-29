
import XCTest
import Cuckoo
@testable import Showcase_iOS

class ContactUsPresenterTests: XCTestCase {

    //MARK: Injectables

    var mockPresenterViewable = MockContactUsPresenterViewable()
    var mockContactUsInteractor = MockContactUsInteractable()

    //MARK: Properties

    var systemUNderTest: ContactUsPresenter!
    var mockError = NSError(domain: "Firebase error", code: 1, userInfo: nil)

    //MARK: Lifecycle Method(s)

    override func setUp() {
        super.setUp()
        let contactUsPresenter = ContactUsPresenter()
        contactUsPresenter.contactUsInteractor = mockContactUsInteractor
        contactUsPresenter.contactUsView = mockPresenterViewable
        systemUNderTest = contactUsPresenter
    }

    //MARK: Tests

    func testThatWhenRetrieveContactsFailsWithErrorThatIsNotNilThenShowOnFailureIsCalled() {
        stub(mockPresenterViewable) { (mock) in
            let _ = when(mock.showOnFailure(with: any()).then({ error in
                XCTAssertNotNil(error)
                XCTAssertEqual(error as NSError, self.mockError)
            }))
            _  = when(mock.stopLoadingAnimation().thenDoNothing())
        }
        systemUNderTest.onRetrieveOfficesFailed(with: mockError)
        verify(mockPresenterViewable, times(1)).stopLoadingAnimation()
        verify(mockPresenterViewable, times(1)).showOnFailure(with: any())
    }

    func testThatWhenRetrieveContactsSucceedsAndThatOfficeViewModelsIsNotNilThenShowOnSuccessIsCalled() {
        stub(mockPresenterViewable) { (mock) in
            _ = when(mock.showOnSuccess(with: any()).then({ officeViewModels in
                print(officeViewModels)
                XCTAssertNotNil(officeViewModels)
            }))
            _ = when(mock.stopLoadingAnimation().thenDoNothing())
        }
        systemUNderTest.onRetrieveOfficesComplete(with: mockOffices())
        verify(mockPresenterViewable, times(1)).stopLoadingAnimation()
        verify(mockPresenterViewable, times(1)).showOnSuccess(with: any())
    }

    //MARK: Mock Offices to help tests.

    func mockOffices() -> [Office] {
        let ptaOffice = Office(with: mockValidOfficeResponse())
        let jhbOffice = Office(with: mockValidOfficeResponse())
        var offices = [Office]()
        offices.append(ptaOffice)
        offices.append(jhbOffice)
        return offices
    }

    func mockValidOfficeResponse() -> [String:Any] {
        let mockJhbOffice: [String: Any] = ["latitude":"-26.122743", "name":"Johannesburg","image":"offices/dvt_hyde_park.png",
                                            "googleMapsPlaceId":"ChIJF0f-kTdzlR4RioXEaM2-a10",
                                            "address":"Ground Floor,Victoria Gate South,Hyde Lane Office Park,Hyde Park Lane,Hydepark,Johannesburg,2196",
                                            "googleMapsName":"DVT Johannesburg",
                                            "emailAddress":"jvandermerwe@jhb.dvt.co.za",
                                            "longitude":"28.03149899999994",
                                            "telephone":"+27117595930"]
        return mockJhbOffice
    }
}
















