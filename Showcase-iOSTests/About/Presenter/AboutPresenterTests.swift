//
//  AboutPresenterTests.swift
//  Showcase-iOSTests
//
//  Created by Sashen Pillay on 2019/03/15.
//  Copyright © 2019 DVT. All rights reserved.
//

import XCTest
import Cuckoo
@testable import Showcase_iOS

class AboutPresenterTests: XCTestCase {

    // MARK: Injectables
    
    var mockPresenterViewable = MockAboutPresenterViewable()
    var mockAboutInteractor = MockAboutInteractable()
    
    // MARK: Properties
    
    var presenterUnderTest: AboutPresenter!
    var mockError = NSError(domain: "Firebase error", code: 1, userInfo: nil)
    
    //MARK: Lifecycle Method(s)
    
    override func setUp() {
        super.setUp()
        let aboutPresenter = AboutPresenter()
        aboutPresenter.aboutInteractor = mockAboutInteractor
        aboutPresenter.aboutView = mockPresenterViewable
        presenterUnderTest = aboutPresenter
    }
    
    // MARK: Tests
    
    func testThatWhenRetrieveSocialMediaLinksFailsWithErrorThatIsNotNilThenShowOnFailureIsCalled() {
        stub(mockPresenterViewable) { (mock) in
            _ = when(mock.hideOnFailure(with: any()).then({ error in
                XCTAssertNotNil(error)
                XCTAssertEqual(error as NSError, self.mockError)
            }))
            _  = when(mock.stopLoadingAnimation().thenDoNothing())
        }
        presenterUnderTest.onRetrieveSocialMediaLinksFailed(with: mockError)
        verify(mockPresenterViewable, times(1)).stopLoadingAnimation()
    }
    
    func testThatWhenRetrieveSocialMediaLinksSucceedsAndThatLinksIsNotNilThenShowOnSuccessIsCalled() {
        stub(mockPresenterViewable) { (mock) in
            _ = when(mock.showOnSuccess(with: any()).then({ links in
                print(links)
                XCTAssertNotNil(links)
            }))
            _ = when(mock.stopLoadingAnimation().thenDoNothing())
        }
        let links = mockLinks()
        presenterUnderTest.onRetrieveSocialMediaLinksComplete(with: links)
        verify(mockPresenterViewable, times(1)).stopLoadingAnimation()
        verify(mockPresenterViewable, times(1)).showOnSuccess(with: any())
    }
    
    // MARK: Mock Offices to help tests.
    
    func mockLinks() -> SocialMediaLinks {
        let links = SocialMediaLinks(with: mockValidSocialMediaResponse())
        return links
    }
    
    func mockValidSocialMediaResponse() -> [String: Any] {
        let response: [String: Any] = ["twitter": "https://twitter.com/dvt_corporate",
                                       "facebook": "https://www.facebook.com/DVTSoftware",
                                       "website": "https://www.dvt.co.za",
                                       "instagram": "https://www.instagram.com/dvtsoftware/"]
        return response
    }
}
