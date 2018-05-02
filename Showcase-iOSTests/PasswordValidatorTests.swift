//
//  PasswordValidatorTests.swift
//  Showcase-iOSTests
//
//  Created by Lehlohonolo Mbele on 2018/04/24.
//  Copyright © 2018 DVT. All rights reserved.
//

import XCTest
@testable import Showcase_iOS

class PasswordValidatorTests: XCTestCase {
    
    let systemUnderTest = PasswordValidator()
    
    override func setUp() {
        super.setUp()
    }
    
    func testThatAnEmptyPasswordIsNotValidated() {
        let isEmptyPasswordValidated = systemUnderTest.isValid("")
        XCTAssertFalse(isEmptyPasswordValidated)
    }
    
    func testThatAPasswordWithMoreThanOneCharacterIsValidated() {
        let isPasswordValidated = systemUnderTest.isValid("4w")
        XCTAssertTrue(isPasswordValidated)
    }
}
