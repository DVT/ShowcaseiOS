//
//  AboutViewModelTests.swift
//  Showcase-iOSTests
//
//  Created by Sashen Pillay on 2019/03/14.
//  Copyright © 2019 DVT. All rights reserved.
//

import XCTest
import Cuckoo
@testable import Showcase_iOS

class AboutViewModelTests: XCTestCase {
    
    var validSocialMediaResponse: SocialMediaLinks!
    var invalidSocialMediaResponse: SocialMediaLinks!
    
    // MARK: lifecycle methods
    override func setUp() {
        super.setUp()
        validSocialMediaResponse = SocialMediaLinks(with: mockValidSocialMediaResponse())
        invalidSocialMediaResponse = SocialMediaLinks(with: mockInvalidSocialMediaResponse())
    }

    override func tearDown() {
        validSocialMediaResponse = nil
        invalidSocialMediaResponse = nil
        super.tearDown()
    }
    
    // MARK: ViewModel Positive Tests
    
    func testInitilizationCompletesWithoutNil() {
        let viewModelUnderTest = AboutViewModel(socialMediaLinks: validSocialMediaResponse)
        XCTAssertNotNil(viewModelUnderTest)
    }
    
    func testThatTwitterUrlHasTheExpectedValue() {
        let viewModelUnderTest = AboutViewModel(socialMediaLinks: validSocialMediaResponse)
        let actualResult = viewModelUnderTest.twitter
        let expectedResult = URL(string: "https://twitter.com/dvt_corporate")
        XCTAssertEqual(actualResult, expectedResult)
    }
    
    func testThatFacebookUrlHasTheExpectedValue() {
        let viewModelUnderTest = AboutViewModel(socialMediaLinks: validSocialMediaResponse)
        let actualResult = viewModelUnderTest.facebook
        let expectedResult = URL(string: "https://www.facebook.com/DVTSoftware")
        XCTAssertEqual(actualResult, expectedResult)
    }
    
    func testThatInstagramUrlHasTheExpectedValue() {
        let viewModelUnderTest = AboutViewModel(socialMediaLinks: validSocialMediaResponse)
        let actualResult = viewModelUnderTest.instagram
        let expectedResult = URL(string: "https://www.instagram.com/dvtsoftware/")
        XCTAssertEqual(actualResult, expectedResult)
    }
    
    func testThatWebsiteUrlHasTheExpectedValue() {
        let viewModelUnderTest = AboutViewModel(socialMediaLinks: validSocialMediaResponse)
        let actualResult = viewModelUnderTest.website
        let expectedResult = URL(string: "https://www.dvt.co.za")
        XCTAssertEqual(actualResult, expectedResult)
    }
    
     // MARK: ViewModel Negative tests
    
    func testThatTwitterUrlHasTheExpectedNilValue() {
        let viewModelUnderTest = AboutViewModel(socialMediaLinks: invalidSocialMediaResponse)
        let actualResult = viewModelUnderTest.twitter
        let expectedResult = URL(string: "https://twitter.com/dvt_corporate")
        XCTAssertEqual(actualResult, expectedResult)
    }
    
    func testThatFacebookUrlHasTheExpectedNilValue() {
        let viewModelUnderTest = AboutViewModel(socialMediaLinks: invalidSocialMediaResponse)
        let actualResult = viewModelUnderTest.facebook
        let expectedResult = URL(string: "https://www.facebook.com/DVTSoftware")
        XCTAssertEqual(actualResult, expectedResult)
    }
    
    func testThatInstagramUrlHasTheExpectedNilValue() {
        let viewModelUnderTest = AboutViewModel(socialMediaLinks: invalidSocialMediaResponse)
        let actualResult = viewModelUnderTest.instagram
        let expectedResult = URL(string: "https://www.instagram.com/dvtsoftware/")
        XCTAssertEqual(actualResult, expectedResult)
    }
    
    func testThatWebsiteUrlHasTheExpectedNilValue() {
        let viewModelUnderTest = AboutViewModel(socialMediaLinks: invalidSocialMediaResponse)
        let actualResult = viewModelUnderTest.website
        let expectedResult = URL(string: "https://www.dvt.co.za")
        XCTAssertEqual(actualResult, expectedResult)
    }
    
    // MARK: Mocking Firebase response dictionary
    
    func mockValidSocialMediaResponse() -> [String: Any] {
        let response: [String: Any] = ["twitter": "https://twitter.com/dvt_corporate",
                                       "facebook": "https://www.facebook.com/DVTSoftware",
                                       "website": "https://www.dvt.co.za",
                                       "instagram": "https://www.instagram.com/dvtsoftware/"]
        return response
    }
    
    func mockInvalidSocialMediaResponse() -> [String: Any] {
        let nilValue: Any? = nil
        let response: [String: Any] = ["twitter": nilValue as Any,
                                       "facebook": nilValue as Any,
                                       "website": nilValue as Any,
                                       "instagram": nilValue as Any]
        return response
    }

}
