//
//  DatabaseReferenceTests.swift
//  Showcase-iOSTests
//
//  Created by Kagiso Mohajane on 2018/04/19.
//  Copyright © 2018 DVT. All rights reserved.
//

import XCTest
import Cuckoo
@testable import Showcase_iOS

class DatabaseReferenceTests: XCTestCase {
    
    let mockDatabaseReference = MockDataReferenceable()
    let mockPath = ""
    
    override func setUp() {
        super.setUp()
    }
    
    func testDatabaseReferenceIsNotNil() {
        stub(mockDatabaseReference) { (mock) in
            let _ = when(mock.child(path: anyString()).then({ (_ ) -> DataReferenceable in
                return self.mockDatabaseReference
            }))
        }
        let databaseReference = mockDatabaseReference.child(path: mockPath)
        XCTAssertNotNil(databaseReference)
    }
    
    func testDatabaseReferenceIsCalledOnce() {
        stub(mockDatabaseReference) { (mock) in
            let _ = when(mock.child(path: anyString()).then({ (_) -> DataReferenceable in return self.mockDatabaseReference }))
        }
        let _ = mockDatabaseReference.child(path: mockPath)
        verify(mockDatabaseReference, times(1)).child(path: anyString())
    }
    
    override func tearDown() {
        super.tearDown()
    }
}
