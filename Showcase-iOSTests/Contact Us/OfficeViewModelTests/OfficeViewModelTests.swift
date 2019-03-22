import XCTest
@testable import Showcase_iOS

class OfficeViewModelTests: XCTestCase {
    
    // MARK: Properties
    
    var jhbOfficeViewModel: OfficeViewModel!
    var cptOfficeViewModel: OfficeViewModel!
    
    // MARK: Lifecycle
    
    override func setUp() {
        super.setUp()
        jhbOfficeViewModel = OfficeViewModel(with: Office(with: mockValidOfficeResponse()))
        cptOfficeViewModel = OfficeViewModel(with: Office(with: mockInvalidOfficeResponse()))
    }
    
    override func tearDown() {
        super.tearDown()
        jhbOfficeViewModel = nil
        cptOfficeViewModel = nil
    }
    // MARK: initializationTests
    
    func testInitializationHasCompletedWithoutNil() {
        XCTAssertNotNil(jhbOfficeViewModel)
        XCTAssertNotNil(cptOfficeViewModel)
    }
    
    // Mark: ViewModel Positive Tests
    
    func testThatNameInOfficeViewModelHasTheExpectedValue() {
        XCTAssertEqual(jhbOfficeViewModel.name, "Johannesburg")
    }
    
    func testThatLatitudeInOfficeViewModelHasTheExpectedValue() {
        XCTAssertEqual(jhbOfficeViewModel.latitude, -26.122743)
    }
    
    func testThatLongitudeInOfficeViewModelHasTheExpectedValue() {
        XCTAssertEqual(jhbOfficeViewModel.longitude, 28.03149899999994)
    }
    
    func testThatImageInOfficeViewModelHasTheExpectedValue() {
        XCTAssertEqual(jhbOfficeViewModel.imageUrl, "offices/dvt_hyde_park.png")
    }
    
    func testThatAddressInOfficeViewModelHasTheExpectesValue() {
        XCTAssertEqual(jhbOfficeViewModel.address, "Ground Floor,Victoria Gate South,Hyde Lane Office Park,Hyde Park Lane,Hydepark,Johannesburg,2196")
    }
    
    func testThatGoogleMapsNameInOfficeViewModelHasTheExpectedValue() {
        XCTAssertEqual(jhbOfficeViewModel.googleMapsName, "DVT Johannesburg")
    }
    
    func testThatGoogleMapsPlaceIdinOfficeViewModelHasTheExpectedValue() {
        XCTAssertEqual(jhbOfficeViewModel.googleMapsPlaceId, "ChIJF0f-kTdzlR4RioXEaM2-a10")
    }
    
    func testThatEmailAddressInOfficeViewModelHasTheExpectedValue() {
        XCTAssertEqual(jhbOfficeViewModel.emailAddress, "jvandermerwe@jhb.dvt.co.za")
    }
    
    func testThatTelephoneNumberInOfficeViewModelHasTheExpectedValue() {
        XCTAssertEqual(jhbOfficeViewModel.telephoneNumber, "+27117595930")
    }
    
    // MARK: ViewModel Negative tests
    
    func testThatNameInOfficeViewModelHasTheExpectedNilValue() {
        XCTAssertEqual(cptOfficeViewModel.name, nil)
    }
    
    func testThatLatitudeInOfficeViewModelHasTheExpectedNilValue() {
        XCTAssertEqual(cptOfficeViewModel.latitude, nil)
    }
    
    func testThatLongitudeInOfficeViewModelHasTheExpectedNilValue() {
        XCTAssertEqual(cptOfficeViewModel.longitude, nil)
    }
    
    func testThatImageInOfficeViewModelHasTheExpectedNilValue() {
        XCTAssertEqual(cptOfficeViewModel.imageUrl, nil)
    }
    
    func testThatGoogleMapsPlaceIdInOfficeViewModelHasTheExpectedNilValue() {
        XCTAssertEqual(cptOfficeViewModel.googleMapsPlaceId, nil)
    }
    
    func testThatGoogleMapsNameInOfficeViewModelHasTheExpectedNilValue() {
        XCTAssertEqual(cptOfficeViewModel.googleMapsName, nil)
    }
    
    func testThatAddressInOfficeViewModelHasTheExpectedNilValue() {
        XCTAssertEqual(cptOfficeViewModel.address, nil)
    }
    
    func testThatEmailAddressInOfficeViewModelHasTheExpectedNilValue() {
        XCTAssertEqual(cptOfficeViewModel.emailAddress, nil)
    }
    
    func testThatTelephoneInOfficeViewModelHasTheExpectedNilValue() {
        XCTAssertEqual(cptOfficeViewModel.telephoneNumber, nil)
    }
    
    
    // MARK: Mocking Firebase response dictionary
    
    func mockValidOfficeResponse() -> [String:Any] {
        let mockJhbOffice: [String: Any] = ["latitude":-26.122743, "name":"Johannesburg","image":"offices/dvt_hyde_park.png",
                                            "googleMapsPlaceId":"ChIJF0f-kTdzlR4RioXEaM2-a10",
                                            "address":"Ground Floor,Victoria Gate South,Hyde Lane Office Park,Hyde Park Lane,Hydepark,Johannesburg,2196",
                                            "googleMapsName":"DVT Johannesburg",
                                            "emailAddress":"jvandermerwe@jhb.dvt.co.za",
                                            "longitude":28.03149899999994,
                                            "telephone":"+27117595930"]
        return mockJhbOffice
    }
    
    func mockInvalidOfficeResponse() -> [String: Any] {
        let nilValue: Any? = nil
        let mockCptOffice: [String: Any] = ["latitude": nilValue as Any, "name":nilValue as Any,"image":nilValue as Any,
                                            "googleMapsPlaceId":nilValue as Any,
                                            "address":nilValue as Any,
                                            "googleMapsName":nilValue as Any,
                                            "emailAddress":nilValue as Any,
                                            "longitude":nilValue as Any,
                                            "telephone":nilValue as Any]
        return mockCptOffice
    }
    
    
    
}
