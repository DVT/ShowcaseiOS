//
//  DatabaseReferenceTests.swift
//  Showcase-iOSTests
//
//  Created by Kagiso Mohajane on 2018/04/19.
//  Copyright © 2018 DVT. All rights reserved.
//

import XCTest
import Cuckoo
import Firebase
@testable import Showcase_iOS

class DatabaseReferenceTests: XCTestCase {
    
    let mockDatabaseReference = MockDataReferenceable()
    var mockdatabaseReferenceObservable = MockFireBaseDatabaseReferenceObservable()
    let mockPath = ""
    var systemUnderTest : FirebaseRetrieverableImplementation!
    var serviceUnderTest: FireBaseDatabaseReferenceObservableImplemantation?
    var snapshot: DataSnapshot?
    
    override func setUp() {
        super.setUp()
        systemUnderTest  = FirebaseRetrieverableImplementation(reference: mockDatabaseReference)
        serviceUnderTest = FireBaseDatabaseReferenceObservableImplemantation(mockdatabaseReferenceObservable)
        snapshot = DataSnapshot()
    }
    
    func testDatabaseReferenceIsNotNil() {
        stub(mockDatabaseReference) { (mock) in
            _ = when(mock.databaseReference()).then({ (_ ) -> DataReferenceable in
                return self.mockDatabaseReference
            })
        }
        let result = systemUnderTest.dataBaseReference()
        XCTAssertNotNil(result)
        verify(mockDatabaseReference, times(1)).databaseReference()
    }

    
    func testDatabaseReferenceIsNil() {
        stub(mockDatabaseReference) { (mock) in
            _ = when(mock.databaseReference()).thenReturn(nil)
        }
        let result = systemUnderTest.dataBaseReference()
        XCTAssertNil(result)
        verify(mockDatabaseReference, times(1)).databaseReference()
    }
    
    func testThatRetrievingChildWithInvalidPathCompletesWithAnError() {
        stub(mockdatabaseReferenceObservable) { (mock) in
            let _ = when(mock.child(any(), completion: any()).then({ path, completion in
                completion(nil, DatabaseError.childNotFound)
            }))
        }
        serviceUnderTest?.child(with: .none) { result, error in
            XCTAssertEqual(error as? DatabaseError, DatabaseError.childNotFound)
        }
        verify(mockdatabaseReferenceObservable, times(1)).child(any(), completion: any())
    }
    
    func testThatRetrievingChildWithValidPathCompletesWithDataSnapshotType() {
        stub(mockdatabaseReferenceObservable) { mock in
            _ = when(mock.child(any(), completion: any()).then({path, completion in
                completion(self.snapshot, nil)
            }))
        }
        serviceUnderTest?.child(with: .apps) { result, error in
            XCTAssertEqual(result as? DataSnapshot, self.snapshot)
            XCTAssertNotNil(result)
        }
        verify(mockdatabaseReferenceObservable, times(1)).child(any(), completion: any())
    }
    
    func testThatRetrievingChildWithPathCompletesWithNilDataSnapshot() {
        stub(mockdatabaseReferenceObservable) { mock in
            _ = when(mock.child(any(), completion: any()).then({path, completion in
                completion(nil, nil)
            }))
        }
        serviceUnderTest?.child(with: .apps) { result, error in
            XCTAssertNil(result)
        }
        verify(mockdatabaseReferenceObservable, times(1)).child(any(), completion: any())
    }
}
