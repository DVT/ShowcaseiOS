
import XCTest
import Cuckoo
@testable import Showcase_iOS

class FirebaseRetrievableTests: XCTestCase {
    
    let mockFirebaseretRetrievable = MockFirebaseRetrievable()
    let mockDatabaseReference = MockDataReferenceable()
    
    override func setUp() {
        super.setUp()
    }
    
    func testFirebaseCalledOnce() {
        stub(mockFirebaseretRetrievable) {(mock) in
            when(mock.database()).then({ (_ ) -> DataReferenceable in
                return self.mockDatabaseReference
            })
        }
        let _ = mockFirebaseretRetrievable.database()
        verify(mockFirebaseretRetrievable, times(1)).database()
    }
    
    func testFirebaseRetrievableIsNotNil() {
        stub(mockFirebaseretRetrievable) { (mock) in
            let _ = when(mock.database().then({ (_) -> DataReferenceable in
                return self.mockDatabaseReference
            }))
        }
        let databaseReference = mockFirebaseretRetrievable.database()
        XCTAssertNotNil(databaseReference)
    }
    
    override func tearDown() {
        super.tearDown()
    }
}
