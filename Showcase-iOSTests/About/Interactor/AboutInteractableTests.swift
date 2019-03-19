//
//  AboutInteractableTests.swift
//  Showcase-iOSTests
//
//  Created by Sashen Pillay on 2019/03/15.
//  Copyright © 2019 DVT. All rights reserved.
//

import XCTest
import Cuckoo
import Firebase
@testable import Showcase_iOS

class AboutInteractableTests: XCTestCase {

    // MARK: Mocked dependencies

    var mockDatabaseRefeceabele = MockDataReferenceable()
    var mockAboutPresentable = MockAboutPresentable()
    var mockDataSnapshot = MockDataSnapshotProtocol()
    var mockError: NSError?

    // MARK: interactor under test

    var interactorUnderTest: AboutInteractableImplementation?

    // MARK: lifecycle methods

    override func setUp() {
        super.setUp()
        mockError = NSError(domain: "FirebaseError", code: 1, userInfo: nil)
        let aboutInteractor = AboutInteractableImplementation()
        aboutInteractor.aboutPresenter = mockAboutPresentable
        aboutInteractor.dataReference = mockDatabaseRefeceabele
        interactorUnderTest = aboutInteractor
    }

    override func tearDown() {
        super.tearDown()
        mockError = nil
    }

    // MARK: Negative tests

    func testThatRetrievingFirbaseLinksReturnsAValidErrorWhenFirebaseLinksRetrieverReturnsAnError() {
        setUpMockStubs()
        stub(mockDatabaseRefeceabele) { mock in
             _ = when(mock.observe(eventType: any(), with: any(), withCancel: any()).then({ _, _, errorCompletion in
                errorCompletion(self.mockError!)
            }))
        }
        stub(mockAboutPresentable) { mock in
            _ = when(mock.onRetrieveSocialMediaLinksFailed(with: any()).then({ error in
                let errorResult = error as NSError
                XCTAssertEqual(errorResult, self.mockError!)
            }))
        }
        interactorUnderTest?.retrieveSocialMediaLinks()
        verify(mockAboutPresentable, times(1)).onRetrieveSocialMediaLinksFailed(with: any())
    }

    func testThatWhenFirebaseLinksRetrieverReturnsANullSnapshotThenOnRetrieveSocialMediaCompletesWithAnEmptySocialMediaLinks() {
        setUpMockStubs()

        stub(mockDataSnapshot) { (mock) in
            _ = when(mock.value.get.thenReturn(mockEmptySocialMediaResponse()))
        }

        stub(mockDatabaseRefeceabele) { mock in
            _ = when(mock.observe(eventType: any(), with: any(), withCancel: any()).then({ _, successCompletion, _ in
                successCompletion(self.mockDataSnapshot)
            }))
        }

        stub(mockAboutPresentable) { mock in
            _ = when(mock.onRetrieveSocialMediaLinksComplete(with: any()).then({ (links) in
                XCTAssertTrue(links.website == nil)
                XCTAssertTrue(links.instagram == nil)
                XCTAssertTrue(links.facebook == nil)
                XCTAssertTrue(links.twitter == nil)
            }))
        }

        interactorUnderTest?.retrieveSocialMediaLinks()
        verify(mockAboutPresentable, times(1)).onRetrieveSocialMediaLinksComplete(with: any())
    }

    func testThatWhenFirebaseLinksRetrieverReturnsAValidNonEmptySnapShotThenOnRetrievesSocialMediaLinksWithComplete() {
        setUpMockStubs()

        stub(mockDataSnapshot) { (mock) in
            _ = when(mock.value.get.thenReturn(mockValidSocialMediaResponse()))
        }

        stub(mockDatabaseRefeceabele) { mock in
            _ = when(mock.observe(eventType: any(), with: any(), withCancel: any()).then({ _, successCompletion, _ in
                successCompletion(self.mockDataSnapshot)
            }))
        }

        stub(mockAboutPresentable) { mock in
            _ = when(mock.onRetrieveSocialMediaLinksComplete(with: any()).then({ (links) in
                XCTAssertTrue(links.website != nil)

            }))
        }

        interactorUnderTest?.retrieveSocialMediaLinks()
        verify(mockAboutPresentable, times(1)).onRetrieveSocialMediaLinksComplete(with: any())
    }

    // MARK: Support mock methods

    func setUpMockStubs() {
        stub(mockDatabaseRefeceabele) { (mock) in
             _ = when(mock.databaseReference().then({ return self.mockDatabaseRefeceabele }))
             _ = when(mock.child(any()).then({ _ in return self.mockDatabaseRefeceabele}))
        }
    }

    func mockValidSocialMediaResponse() -> [String: Any] {
        let response: [String: Any] = ["twitter": "https://twitter.com/dvt_corporate",
                                       "facebook": "https://www.facebook.com/DVTSoftware",
                                       "website": "https://www.dvt.co.za",
                                       "instagram": "https://www.instagram.com/dvtsoftware/"]
        return response
    }

    func mockEmptySocialMediaResponse() -> [String: Any] {
        let response: [String: Any] = ["": ""]
        return response
    }

}
