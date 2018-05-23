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
    var mockDataSnapShot = MockDataSnapshotProtocol()
    var systeUnderTest: HomeInteractor?
    
    override func setUp() {
        super.setUp()
        let homeInteractor = HomeInteractor()
        homeInteractor.firebaseDatabaseReference = mockDatabaseReference
        homeInteractor.homePresenter = mockHomePresentable
        systeUnderTest = homeInteractor
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
        stub(mockDataSnapShot) { (mock) in
            _ = when(mock.value.get.thenReturn(nil))
        }
        stub(mockDatabaseReference) { mock in
            _ = when(mock.databaseReference().then({ return self.mockDatabaseReference }))
            _ = when(mock.child(any()).then({ _ in return self.mockDatabaseReference}))
            _ = when(mock.observe(eventType: any(), with: any(), withCancel: any()).then({ _, completion, _ in
                completion(self.mockDataSnapShot)
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
    
    func testThatWhenDataSnapShotIsNotNilAndHasValueThenAnArrayOfShowcaseAppIsUpdatedCorrectlyWithValidDataFromDataSnapshot() {
        stub(mockDataSnapShot) { (mock) in
            _ = when(mock.value.get.thenReturn(createFakeApp()))
        }
        stub(mockDatabaseReference) { mock in
            _ = when(mock.databaseReference().then({ return self.mockDatabaseReference }))
            _ = when(mock.child(any()).then({ _ in return self.mockDatabaseReference}))
            _ = when(mock.observe(eventType: any(), with: any(), withCancel: any()).then({ _, completion, _ in
                completion(self.mockDataSnapShot)
            }))
        }
        stub(mockHomePresentable) { mock in
            _ = when(mock.onFetchShowcaseAppsSuccess(with: any()).then({ showcaseApss in
                XCTAssertTrue(!showcaseApss.isEmpty)
                XCTAssert(showcaseApss.first?.client == "Absa")
            }))
        }
        self.systeUnderTest?.fetchShowcaseApps()
        verify(mockHomePresentable, times(1)).onFetchShowcaseAppsSuccess(with: any())
    }
    
    func createFakeApp() -> [String: Any] {
        let fakeShowcaseApp = ["client": "Absa",
                               "functionality": "Helps customer invest money"]
        return fakeShowcaseApp
    }
}
