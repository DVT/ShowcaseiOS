//
//  AuthErrorCodeTests.swift
//  Showcase-iOSTests
//
//  Created by Lehlohonolo Mbele on 2018/04/26.
//  Copyright © 2018 DVT. All rights reserved.
//

import XCTest
import FirebaseAuth
@testable import Showcase_iOS

class AuthErrorCodeTests: XCTestCase {
    
    var systemUnderTest: AuthErrorCode?
    
    override func setUp() {
        super.setUp()
    }
 
    func testThatGivenAnOperationNotAllowedErrorCodeTheErrorMessageIsTheOperationNotAllowedMessage() {
        systemUnderTest = AuthErrorCode(rawValue: AuthErrorCode.operationNotAllowed.rawValue)
        XCTAssertEqual(systemUnderTest?.errorMessage, ErrorMesssage.operationNotAllowed.rawValue)
    }
    
    func testThatGivenAnInvalidEmailErrorCodeTheErrorMessageIsTheInvalidEmailMessage() {
        systemUnderTest = AuthErrorCode(rawValue: AuthErrorCode.invalidEmail.rawValue)
        XCTAssertEqual(systemUnderTest?.errorMessage, ErrorMesssage.invalidEmail.rawValue)
    }
    
    func testThatGivenAUserDisabledErrorCodeTheErrorMessageIsAUserDisabledMessage() {
        systemUnderTest = AuthErrorCode(rawValue: AuthErrorCode.userDisabled.rawValue)
        XCTAssertEqual(systemUnderTest?.errorMessage, ErrorMesssage.userDisabled.rawValue)
    }
    
    func testThatGivenAWrongPasswordErrorCodeTheErrorMessageIsAWrongPasswordMessage() {
        systemUnderTest = AuthErrorCode(rawValue: AuthErrorCode.wrongPassword.rawValue)
        XCTAssertEqual(systemUnderTest?.errorMessage, ErrorMesssage.wrongPassword.rawValue)
    }
    
    func testThatGivenANetworkErrorCodeTheErrorMessageIsANetworkErrorMessage() {
        systemUnderTest = AuthErrorCode(rawValue: AuthErrorCode.networkError.rawValue)
        XCTAssertEqual(systemUnderTest?.errorMessage, ErrorMesssage.networkError.rawValue)
    }
    
    func testThatGivenAUserNotFoundErrorCodeTheErrorMessageIsTheUserNotFoundMessage() {
        systemUnderTest = AuthErrorCode(rawValue: AuthErrorCode.userNotFound.rawValue)
        XCTAssertEqual(systemUnderTest?.errorMessage, ErrorMesssage.userNotFound.rawValue)
    }
    
    func testThatGivenAnyOtherErrorCodeTheErrorMessageIsTheDefaultErrorMessage() {
        systemUnderTest = AuthErrorCode(rawValue: 7)
        XCTAssertEqual(systemUnderTest?.errorMessage, ErrorMesssage.defaultErrorMessage.rawValue)
    }
}
