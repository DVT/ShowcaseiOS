//
//  FireBaseDatabaseReferenceObservableTests.swift
//  Showcase-iOSTests
//
//  Created by Edward Mtshweni on 2018/04/23.
//  Copyright © 2018 DVT. All rights reserved.
//

import XCTest
import Cuckoo
@testable import Showcase_iOS

class FireBaseDatabaseReferenceObservableTests: XCTestCase {
    var mockdatabaseReferenceObservable = MockFireBaseDatabaseReferenceObservable()
    var serviceUnderTest: FireBaseDatabaseReferenceObservableImplemantation?
    var snapshot: Any?
    
    override func setUp() {
        super.setUp()
        serviceUnderTest = FireBaseDatabaseReferenceObservableImplemantation(mockdatabaseReferenceObservable)
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
    
    func testThatRetrievingChildWithValidPathCompletesWithADictionary() {
        stub(mockdatabaseReferenceObservable) { (mock) in
            let _ = when(mock.child(any(), completion: any()).then({ path, completion in
                completion(self.snapshot, nil)
            }))
        }
        serviceUnderTest?.child(with: .apps) { result, error in
        
        }
        verify(mockdatabaseReferenceObservable, times(1)).child(any(), completion: any())
    }
}
