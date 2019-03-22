import XCTest
import Cuckoo
import Firebase
@testable import Showcase_iOS

class ContactUsInteractableTests: XCTestCase {
    
    // MARK: Mocked dependencies
    
    var mockDatabaseRefeceabele = MockDataReferenceable()
    var mockContactUsPresentable = MockContactUsPresentable()
    var mockDataSnapshot = MockDataSnapshotProtocol()
    var mockError: NSError?
    
    // MARK: System(s) under test

    var systemUnderTest: ContactUsInteractableImplementation?
    
    // MARK: Test lifcycle method(s)

    override func setUp() {
        super.setUp()
        mockError = NSError(domain: "FirebaseError", code: 1, userInfo: nil)
        let contactUsInteractor = ContactUsInteractableImplementation()
        contactUsInteractor.contactUsPresenter = mockContactUsPresentable
        contactUsInteractor.dataReference = mockDatabaseRefeceabele        
        systemUnderTest = contactUsInteractor
    }

    // MARK: Tests

    func testThatRetrievingFirbaseContactsReturnsAValidErrorWhenFirebaseContactRetrieverReturnsAnError() {
        setUpMockStubs()
        stub(mockDatabaseRefeceabele) { mock in
            let _ = when(mock.observe(eventType: any(), with: any(), withCancel: any()).then({ _, _, errorCompletion in
                errorCompletion(self.mockError!)
            }))
        }
        stub(mockContactUsPresentable) { mock in
            _ = when(mock.onRetrieveOfficesFailed(with: any()).then({ error in
                let errorResult = error as NSError
                XCTAssertEqual(errorResult, self.mockError!)
            }))
        }
        systemUnderTest?.retrieveContacts()
        verify(mockContactUsPresentable, times(1)).onRetrieveOfficesFailed(with: any())
    }

    func testThatWhenFirebaseContactRetrieverReturnsANullSnapshotThenOnRetrieveOfficesCompletesWithAnEmptyArrayOfOffices() {
        setUpMockStubs()
        
        stub(mockDataSnapshot) { (mock) in
            _ = when(mock.value.get.thenReturn(nil))
        }
        
        stub(mockDatabaseRefeceabele) { mock in
            let _ = when(mock.observe(eventType: any(), with: any(), withCancel: any()).then({ _, successCompletion, _ in
                successCompletion(self.mockDataSnapshot)
            }))
        }
        
        stub(mockContactUsPresentable) { mock in
            _ = when(mock.onRetrieveOfficesComplete(with: any()).then({ (offices) in
                XCTAssertTrue(offices.isEmpty, "Offices is not empty")
            }))
        }
        
        systemUnderTest?.retrieveContacts()
        verify(mockContactUsPresentable, times(1)).onRetrieveOfficesComplete(with: any())
    }

    func testThatWhenFirebaseContactRetrieverReturnsAValidNonEmptySnapShotThenOnRetrieveOfficesCompletesWithAnArrayOfOffices() {
        setUpMockStubs()
        
        stub(mockDataSnapshot) { (mock) in
            _ = when(mock.value.get.thenReturn(createFakeContact()))
        }
        
        stub(mockDatabaseRefeceabele) { mock in
            let _ = when(mock.observe(eventType: any(), with: any(), withCancel: any()).then({ _, successCompletion, _ in
                successCompletion(self.mockDataSnapshot)
            }))
        }
        
        stub(mockContactUsPresentable) { mock in
            _ = when(mock.onRetrieveOfficesComplete(with: any()).then({ (offices) in
                XCTAssertTrue(!offices.isEmpty, "Offices array is empty")
                XCTAssertTrue(offices.first?.name == "DVT")
            }))
        }
        
        systemUnderTest?.retrieveContacts()
        verify(mockContactUsPresentable, times(1)).onRetrieveOfficesComplete(with: any())
    }

    func setUpMockStubs() {
        stub(mockDatabaseRefeceabele) { (mock) in
            let _ = when(mock.databaseReference().then({ return self.mockDatabaseRefeceabele }))
            let _ = when(mock.child(any()).then({ _ in return self.mockDatabaseRefeceabele}))
            
        }
    }

    func createFakeContact() -> [String: Any] {
        let contact = ["name": "DVT", "telephone": "123456789"]
        return contact
    }

}
