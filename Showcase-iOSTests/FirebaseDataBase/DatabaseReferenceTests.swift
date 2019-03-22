import XCTest
import Cuckoo
import Firebase
@testable import Showcase_iOS

class DatabaseReferenceTests: XCTestCase {

    // MARK: Mocked dependencies

    let mockDatabaseReference = MockDataReferenceable()
    var mockSnaphot: DataSnapshot?
    let mockPath = ""

    // MARK: System under test

    var systemUnderTest : FirebaseRetrieverableImplementation?

    // MARK: Lifecycle

    override func setUp() {
        super.setUp()
        systemUnderTest  = FirebaseRetrieverableImplementation(reference: mockDatabaseReference)
        mockSnaphot = DataSnapshot()
    }

    override func tearDown() {
        super.tearDown()
    }

    // MARK: Tests

    func testThatRetrievingFirebaseDatabaseReferenceDoesNotReturnNil() {
        stub(mockDatabaseReference) { (mock) in
            _ = when(mock.databaseReference()).then({ (_ ) -> DataReferenceable in
                return self.mockDatabaseReference
            })
        }
        let result = systemUnderTest?.dataBaseReference()
        XCTAssertNotNil(result)
        verify(mockDatabaseReference, times(1)).databaseReference()
    }

    func testThatRetrievingFirebaseDatabaseReferenceReturnsNil() {
        stub(mockDatabaseReference) { (mock) in
            _ = when(mock.databaseReference()).thenReturn(nil)
        }
        let result = systemUnderTest?.dataBaseReference()
        XCTAssertNil(result)
        verify(mockDatabaseReference, times(1)).databaseReference()
    }

    func testThatFirebaseFetcherReturnsDataSnapshotThatIsNotNilWhenFirebaseReturnsAValidSnapShot() {
        setUpDatabaseReferenceTestsStubs()
        stub(mockDatabaseReference) { mock in
            _ = when(mock.observe(eventType: any(), with: any(), withCancel: any()).then({ _, snapshotCompletion, _  in
                if let snapShotData = self.mockSnaphot {
                    snapshotCompletion(snapShotData)
                }
            }))
        }
        systemUnderTest?.fetchFirebaseData(from: .office) { data, _ in
            XCTAssertNotNil(data)
        }
        verify(mockDatabaseReference, times(1)).observe(eventType: any(), with: any(), withCancel: any())
    }

    func testThatFirebaseFetcherReturnsErrorThatIsNotNilWhenFirebaseReturnsAnError() {
        setUpDatabaseReferenceTestsStubs()
        stub (mockDatabaseReference) { mock in
            _ = when(mock.observe(eventType: any(), with: any(), withCancel: any()).then({ _, _, errorCompletion in
                let error = NSError(domain: "FirebaseFetchError", code: 1, userInfo: nil)
                errorCompletion(error)
            }))
        }
        systemUnderTest?.fetchFirebaseData(from: .office) { _, error in
            XCTAssertNotNil(error)
        }
        verify(mockDatabaseReference, times(1)).observe(eventType: any(), with: any(), withCancel: any())
    }

    private func setUpDatabaseReferenceTestsStubs() {
        stub(mockDatabaseReference) { (mock) in
            _ = when(mock.databaseReference()).then({ (_ ) -> DataReferenceable? in
                return self.mockDatabaseReference
            })
        }
        stub(mockDatabaseReference) {(mock) in
            _ = when(mock.child(any()).then({(path) -> DataReferenceable? in
                return self.mockDatabaseReference
            }))
        }
    }
}
