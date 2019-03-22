import XCTest
import Cuckoo
@testable import Showcase_iOS

class ContactUsCellViewModelTests: XCTestCase {

    // MARK: Mocked dependencies

    var mockSharedApplicationDelegate = MockSharedApplicationDelegate()
    var mockContactUsNavigatorDelegate = MockContactUsNavigatorDelegate()
    var mockOfficeViewModel: OfficeViewModel?
    var mockInvalidOfficeViewModel: OfficeViewModel?
    var mockInvalidEmailOfficeViewModel: OfficeViewModel?
    var mockInvalidCoordinatesOfficeViewModel: OfficeViewModel?
    var mockUrlString = "012233"
    var mockUrl: URL?

    // MARK: System under test

    var viewModelUnderTest: ContactUsCellViewModel?

    // MARK: Lifecycle

    override func setUp() {
        super.setUp()
        mockOfficeViewModel = mockValidOfficeResponse()
        mockInvalidOfficeViewModel = mockInvalidOfficeResponse()
        viewModelUnderTest = ContactUsCellViewModel(with: mockOfficeViewModel)
        viewModelUnderTest?.sharedApplication = mockSharedApplicationDelegate
        viewModelUnderTest?.contactUsNavigator = mockContactUsNavigatorDelegate
        mockUrl = URL(string: mockUrlString)
    }

    override func tearDown() {
        super.tearDown()
        viewModelUnderTest = nil
        mockInvalidOfficeViewModel = nil
        mockOfficeViewModel = nil
        mockUrl = nil
    }

    // MARK: Tests

    func testThatWhenNavigateMethodExecutesWithLatitudeThatIsEmptyThenNavigateDoesNotExecute() {
        viewModelUnderTest = ContactUsCellViewModel(with: mockOfficeResponseWithNilLatitude())
        stub(mockContactUsNavigatorDelegate) { mock in
            _ = when(mock.navigate(with: any(), longitude: any(), branch: any()).thenDoNothing())
        }
        viewModelUnderTest?.navigate()
        verify(mockContactUsNavigatorDelegate, never()).navigate(with: any(), longitude: any(), branch: any())
    }

    func testThatWhenNavigateMethodExecutesWithLongitudeThatIsEmptyThenNavigateDoesNotExecute() {
        viewModelUnderTest = ContactUsCellViewModel(with: mockOfficeResponseWithNilLongitude())
        stub(mockContactUsNavigatorDelegate) { mock in
            _ = when(mock.navigate(with: any(), longitude: any(), branch: any()).thenDoNothing())
        }
        viewModelUnderTest?.navigate()
        verify(mockContactUsNavigatorDelegate, never()).navigate(with: any(), longitude: any(), branch: any())
    }

    func testThatWhenNavigateMethodExecutesWithLongitudeAndLongitudeThatAreNotNilThenNavigateExecutes() {
        stub(mockContactUsNavigatorDelegate) { mock in
            _ = when(mock.navigate(with: any(), longitude: any(), branch: any()).thenDoNothing())
        }
        viewModelUnderTest?.navigate()
        verify(mockContactUsNavigatorDelegate, times(1)).navigate(with: any(), longitude: any(), branch: any())
    }

    func testThatWhenCallMethodExecutesOpenSharedApplicationExecutesWithURL() {
        stub(mockSharedApplicationDelegate) { mock in
            _ = when(mock.openSharedApplication(with: any()).then({ url in
                self.mockUrl = url
            }))
        }
        viewModelUnderTest?.call()
        verify(mockSharedApplicationDelegate, times(1)).openSharedApplication(with: any())
    }

    func testThatWhenEmailMethodExecutesOpenSharedApplicationExecutesWithURL() {
        stub(mockSharedApplicationDelegate) { mock in
            _ = when(mock.openSharedApplication(with: any()).then({ url in
                self.mockUrl = url
            }))
        }
        viewModelUnderTest?.email()
        verify(mockSharedApplicationDelegate, times(1)).openSharedApplication(with: any())
    }

    func testThatWhenCallMethodExecutesWithTelephoneNumberThatIsEmptyThenOpenSharedApplicationDonesNotExecute() {
        viewModelUnderTest = ContactUsCellViewModel(with: mockInvalidOfficeViewModel)
        stub(mockSharedApplicationDelegate) { mock in
            _ = when(mock.openSharedApplication(with: any()).thenDoNothing())
        }
        viewModelUnderTest?.call()
        verify(mockSharedApplicationDelegate, times(0)).openSharedApplication(with: any())
    }

    func testThatWhenEmailMethodExecutesWithEmailAddressThatIsEmptyThenOpenSharedApplicationDonesNotExecute() {
        viewModelUnderTest = ContactUsCellViewModel(with: mockInvalidOfficeViewModel)
        stub(mockSharedApplicationDelegate) { mock in
            _ = when(mock.openSharedApplication(with: any()).thenDoNothing())
        }
        viewModelUnderTest?.email()
        verify(mockSharedApplicationDelegate, times(0)).openSharedApplication(with: any())
    }

    func testThatLatitudeIContactUsCellViewModelHasTheExpectedValue() {
        XCTAssertEqual(viewModelUnderTest?.latitude, -26.122743)
    }

    func testThatLongitudeInContactUsCellViewModelHasTheExpectedValue() {
        XCTAssertEqual(viewModelUnderTest?.longitude, 28.03149899999994)
    }

    func testThatBranchInContactUsCellViewModelHasTheExpectedValue() {
        XCTAssertEqual(viewModelUnderTest?.branch, "Johannesburg")
    }

    func testThatLocationDescritionInContactUsCellViewModelHasTheExpectedValue() {
        XCTAssertEqual(viewModelUnderTest?.locationDescription, "Ground Floor,Victoria Gate South,Hyde Lane Office Park,Hyde Park Lane,Hydepark,Johannesburg,2196")
    }

    func testThatGivenAnOfficeViewModelWhereLatitudeIsNilThenLatitudeInCellViewModelShouldEqualToZero() {
        viewModelUnderTest = ContactUsCellViewModel(with: mockInvalidOfficeViewModel)
        XCTAssertEqual(viewModelUnderTest?.latitude, 0.0)
    }
    
    func testThatGivenAnOfficeViewModelWhereLatitudeIsNilThenLongitudeInCellViewModelShouldEqualToZero() {
        viewModelUnderTest = ContactUsCellViewModel(with: mockInvalidOfficeViewModel)
        XCTAssertEqual(viewModelUnderTest?.longitude, 0.0)
    }

    func testThatGivenAnOfficeViewModelWhereNameIsNilThenBranchInCellViewModelShouldEqualAnEmptyString() {
        viewModelUnderTest = ContactUsCellViewModel(with: mockInvalidOfficeViewModel)
        XCTAssertEqual(viewModelUnderTest?.branch, "")
    }

    func testThatGivenAnOfficeViewModelWhereNameIsNilThenLocationDescriptionInCellViewModelShouldEqualAnEmptyString() {
        viewModelUnderTest = ContactUsCellViewModel(with: mockInvalidOfficeViewModel)
        XCTAssertEqual(viewModelUnderTest?.locationDescription, "")
    }

    func mockValidOfficeResponse() -> OfficeViewModel {
        let mockJhbOffice: [String: Any] = ["latitude":-26.122743, "name":"Johannesburg","image":"offices/dvt_hyde_park.png",
                                            "googleMapsPlaceId":"ChIJF0f-kTdzlR4RioXEaM2-a10",
                                            "address":"Ground Floor,Victoria Gate South,Hyde Lane Office Park,Hyde Park Lane,Hydepark,Johannesburg,2196",
                                            "googleMapsName":"DVT Johannesburg",
                                            "emailAddress":"jvandermerwe@jhb.dvt.co.za",
                                            "longitude":28.03149899999994,
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

    func mockOfficeResponseWithNilLatitude() -> OfficeViewModel {
        let nilValue: Any? = nil
        let mockJhbOffice: [String: Any] = ["latitude":nilValue as Any, "name":"Johannesburg","image":"offices/dvt_hyde_park.png",
                                            "googleMapsPlaceId":"ChIJF0f-kTdzlR4RioXEaM2-a10",
                                            "address":"Ground Floor,Victoria Gate South,Hyde Lane Office Park,Hyde Park Lane,Hydepark,Johannesburg,2196",
                                            "googleMapsName":"DVT Johannesburg",
                                            "emailAddress":"jvandermerwe@jhb.dvt.co.za",
                                            "longitude":"",
                                            "telephone":"+2773444000"]
        return OfficeViewModel(with: Office(with: mockJhbOffice))
    }

    func mockOfficeResponseWithNilLongitude() -> OfficeViewModel {
        let nilValue: Any? = nil
        let mockJhbOffice: [String: Any] = ["latitude":-23.44333, "name":"Johannesburg","image":"offices/dvt_hyde_park.png",
                                            "googleMapsPlaceId":"ChIJF0f-kTdzlR4RioXEaM2-a10",
                                            "address":"Ground Floor,Victoria Gate South,Hyde Lane Office Park,Hyde Park Lane,Hydepark,Johannesburg,2196",
                                            "googleMapsName":"DVT Johannesburg",
                                            "emailAddress":"jvandermerwe@jhb.dvt.co.za",
                                            "longitude":nilValue as Any,
                                            "telephone":"+2773444000"]
        return OfficeViewModel(with: Office(with: mockJhbOffice))
    }
    
}
