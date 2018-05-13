//
//  LoginRouterTests.swift
//  Showcase-iOSTests
//
//  Created by Lehlohonolo Mbele on 2018/05/08.
//  Copyright © 2018 DVT. All rights reserved.
//

import XCTest
import UIKit
@testable import Showcase_iOS

class LoginRouterTests: XCTestCase {
    
    var systemUnderTest: LoginRouter!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = LoginRouter()
    }
    
    func testThatTheLoginRouterReturnsANotNilLoginVC() {
        let resultLoginVC = systemUnderTest.createModule()
        XCTAssertNotNil(resultLoginVC)
    }
    
    func testThatTheResultingViewcontrollerFromLoginRouterHasCorrectIdentifiier() {
        let resultLoginVC = systemUnderTest.createModule()
        XCTAssertTrue(resultLoginVC.restorationIdentifier == "LoginViewController")
    }
    
}
