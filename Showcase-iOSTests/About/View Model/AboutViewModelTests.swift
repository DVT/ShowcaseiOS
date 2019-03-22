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
    let mockedSocialMediaResponses = GeneratedSocialMediaData()

    // MARK: lifecycle methods

    override func setUp() {
        super.setUp()
        validSocialMediaResponse = SocialMediaLinks(with: mockedSocialMediaResponses.mockSocialMediaResponseWithValidData)
        invalidSocialMediaResponse = SocialMediaLinks(with: mockedSocialMediaResponses.mockInvalidSocialMediaResponse)
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
    
}
