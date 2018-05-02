//
//  EmailValidatorTests.swift
//  Showcase-iOSTests
//
//  Created by Lehlohonolo Mbele on 2018/04/24.
//  Copyright © 2018 DVT. All rights reserved.
//

import XCTest
@testable import Showcase_iOS

class EmailValidatorTests: XCTestCase {
    var systemUnderTest = EmailValidator()
    
    override func setUp() {
        super.setUp()
    }

    func testThatAnEmailAddressWhichIsValidGetsValidByEmailValidator() {
        let isEmailValidated = systemUnderTest.isValid("testEmail@gmail.com")
        XCTAssertTrue(isEmailValidated)
    }
    
    func testThatAnEmptyEmailDoesNotGetValidated() {
        let isEmptyStringValidated = systemUnderTest.isValid("")
        XCTAssertFalse(isEmptyStringValidated)
    }
    
    func testThatAnEmailWithoutThePeriodSignDoesNotGetValidated() {
        let isEmailValidated = systemUnderTest.isValid("testEmail@gmailcom")
        XCTAssertFalse(isEmailValidated)
    }
    
    func testThatAnEmailWithoutTheAtSignDoesNotGetValidated() {
        let isEmailValidated = systemUnderTest.isValid("testEmailgmail.com")
        XCTAssertFalse(isEmailValidated)
    }
    
    func testThatAnEmailWithLessThanTwoCharactersAfterThePeriodDoesNotGetValidated() {
        let isEmailValid = systemUnderTest.isValid("testEmail@gmail.c")
        XCTAssertFalse(isEmailValid)
    }
}
