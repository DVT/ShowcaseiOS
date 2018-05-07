//
//  HomeInteractableTests.swift
//  Showcase-iOSTests
//
//  Created by Edward Mtshweni on 2018/05/02.
//  Copyright © 2018 DVT. All rights reserved.
//

import XCTest
import Cuckoo
import Firebase
@testable import Showcase_iOS

class HomeInteractableTests: XCTestCase {
    var mockDatabaseReference = MockDataReferenceable()
    var mockHomePresentable = MockHomePresentable()
    var systeUnderTest: HomeInteractorImplementation?
    
    override func setUp() {
        super.setUp()
        systeUnderTest = HomeInteractorImplementation(with: mockDatabaseReference, and: mockHomePresentable)
    }
    
    func testThatFetchingShowcaseAppsCompletesWithAnErrorWhenFirebaseReturnsAnError() {
        stub(mockDatabaseReference) { mock in
            _ = when(mock.databaseReference().then({ return self.mockDatabaseReference }))
            _ = when(mock.child(any()).then({ _ in return self.mockDatabaseReference}))
            _ = when(mock.observe(eventType: any(), with: any(), withCancel: any()).then({ _, _, completion in
                completion(DatabaseError.childNotFound)
            }))
        }
        stub(mockHomePresentable) { mock in
            _ = when(mock.onFetchShowcaseAppsFailure(with: any()).then({ error in
                XCTAssertEqual(error as DatabaseError, DatabaseError.childNotFound)
            }))
        }
        self.systeUnderTest?.fetchShowcaseApps()
        verify(mockHomePresentable, times(1)).onFetchShowcaseAppsFailure(with: any())
    }
    
    func testThatFetchingShowcaseAppsCompletesWithADataSnapshopAndAnEmptyListOfShowcaseApps() {
        stub(mockDatabaseReference) { mock in
            _ = when(mock.databaseReference().then({ return self.mockDatabaseReference }))
            _ = when(mock.child(any()).then({ _ in return self.mockDatabaseReference}))
            _ = when(mock.observe(eventType: any(), with: any(), withCancel: any()).then({ _, completion, _ in
                completion(DataSnapshot())
            }))
        }
        stub(mockHomePresentable) { mock in
            _ = when(mock.onFetchShowcaseAppsSuccess(with: any()).then({ showcaseApss in
                XCTAssertTrue(showcaseApss.isEmpty)
            }))
        }
        self.systeUnderTest?.fetchShowcaseApps()
        verify(mockHomePresentable, times(1)).onFetchShowcaseAppsSuccess(with: any())
    }
}
