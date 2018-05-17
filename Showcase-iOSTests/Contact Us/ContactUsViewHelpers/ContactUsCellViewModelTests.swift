

import XCTest
import Cuckoo
@testable import Showcase_iOS

class ContactUsCellViewModelTests: XCTestCase {
    
    var mockSharedApplicationDelegate = MockSharedApplicationDelegate()
    var systemUnderTest: ContactUsCellViewModel?
    var mockOfficeViewModel: OfficeViewModel?
    var mockInvalidOfficeViewModel: OfficeViewModel?
    var mockInvalidEmailOfficeViewModel: OfficeViewModel?
    var mockInvalidCoordinatesOfficeViewModel: OfficeViewModel?
    var mockUrlString = "012233"
    var mockUrl: URL?
    
    override func setUp() {
        super.setUp()
        mockOfficeViewModel = mockValidOfficeResponse()
        mockInvalidOfficeViewModel = mockInvalidOfficeResponse()
        systemUnderTest = ContactUsCellViewModel(with: mockOfficeViewModel)
        systemUnderTest?.sharedApplication = mockSharedApplicationDelegate
        mockUrl = URL(string: mockUrlString)
    }
    
    func testThatWhenCallMethodExecutesOpenSharedApplicationExecutesWithURL() {
        stub(mockSharedApplicationDelegate) { mock in
            _ = when(mock.openSharedApplication(with: any()).then({ url in
                self.mockUrl = url
            }))
        }
        systemUnderTest?.call()
        verify(mockSharedApplicationDelegate, times(1)).openSharedApplication(with: any())
    }
    
    func testThatWhenEmailMethodExecutesOpenSharedApplicationExecutesWithURL() {
        stub(mockSharedApplicationDelegate) { mock in
            _ = when(mock.openSharedApplication(with: any()).then({ url in
                self.mockUrl = url
            }))
        }
        systemUnderTest?.email()
        verify(mockSharedApplicationDelegate, times(1)).openSharedApplication(with: any())
    }
    
    func testThatWhenCallMethodExecutesWithTelephoneNumberThatIsEmptyThenOpenSharedApplicationDonesNotExecute() {
        systemUnderTest = ContactUsCellViewModel(with: mockInvalidOfficeViewModel)
        stub(mockSharedApplicationDelegate) { mock in
            _ = when(mock.openSharedApplication(with: any()).thenDoNothing())
        }
        systemUnderTest?.call()
        verify(mockSharedApplicationDelegate, times(0)).openSharedApplication(with: any())
    }
    
    func testThatWhenEmailMethodExecutesWithEmailAddressThatIsEmptyThenOpenSharedApplicationDonesNotExecute() {
        systemUnderTest = ContactUsCellViewModel(with: mockInvalidOfficeViewModel)
        stub(mockSharedApplicationDelegate) { mock in
            _ = when(mock.openSharedApplication(with: any()).thenDoNothing())
        }
        systemUnderTest?.email()
        verify(mockSharedApplicationDelegate, times(0)).openSharedApplication(with: any())
    }
    func testThatLatitudeIContactUsCellViewModelHasTheExpectedValue() {
        XCTAssertEqual(systemUnderTest?.latitude, -26.122743)
    }
    
    func testThatLongitudeInContactUsCellViewModelHasTheExpectedValue() {
        XCTAssertEqual(systemUnderTest?.longitude, 28.03149899999994)
    }
    
    func testThatBranchInContactUsCellViewModelHasTheExpectedValue() {
        XCTAssertEqual(systemUnderTest?.branch, "Johannesburg")
    }
    
    func testThatLocationDescritionInContactUsCellViewModelHasTheExpectedValue() {
        XCTAssertEqual(systemUnderTest?.locationDescription, "Ground Floor,Victoria Gate South,Hyde Lane Office Park,Hyde Park Lane,Hydepark,Johannesburg,2196")
    }
    
    func testThatGivenAnOfficeViewModelWhereLatitudeIsNilThenLatitudeInCellViewModelShouldEqualToZero() {
        systemUnderTest = ContactUsCellViewModel(with: mockInvalidOfficeViewModel)
        XCTAssertEqual(systemUnderTest?.latitude, 0.0)
    }
    
    func testThatGivenAnOfficeViewModelWhereLatitudeIsNilThenLongitudeInCellViewModelShouldEqualToZero() {
        systemUnderTest = ContactUsCellViewModel(with: mockInvalidOfficeViewModel)
        XCTAssertEqual(systemUnderTest?.longitude, 0.0)
    }
    
    func testThatGivenAnOfficeViewModelWhereNameIsNilThenBranchInCellViewModelShouldEqualAnEmptyString() {
        systemUnderTest = ContactUsCellViewModel(with: mockInvalidOfficeViewModel)
        XCTAssertEqual(systemUnderTest?.branch, "")
    }
    
    func testThatGivenAnOfficeViewModelWhereNameIsNilThenLocationDescriptionInCellViewModelShouldEqualAnEmptyString() {
        systemUnderTest = ContactUsCellViewModel(with: mockInvalidOfficeViewModel)
        XCTAssertEqual(systemUnderTest?.locationDescription, "")
    }
    
    override func tearDown() {
        super.tearDown()
        systemUnderTest = nil
        mockInvalidOfficeViewModel = nil
        mockOfficeViewModel = nil
        mockUrl = nil
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
    
    func mockInvalidOfficeResponse() -> OfficeViewModel {
        let nilValue: Any? = nil
        let mockJhbOffice: [String: Any] = ["latitude":nilValue as Any, "name":nilValue as Any,"image":nilValue as Any,
                                            "googleMapsPlaceId":nilValue as Any,
                                            "address":nilValue as Any,
                                            "googleMapsName":nilValue as Any,
                                            "emailAddress":nilValue as Any,
                                            "longitude":nilValue as Any,
                                            "telephone":nilValue as Any]
        return OfficeViewModel(with: Office(with: mockJhbOffice))
    }
  
    
    
    
}
