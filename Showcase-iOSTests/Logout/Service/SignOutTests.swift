//
//  SignOutTests.swift
//  Showcase-iOSTests
//
//  Created by Lehlohonolo Mbele on 2018/05/31.
//  Copyright © 2018 DVT. All rights reserved.
//

import XCTest
import Cuckoo
@testable import Showcase_iOS

class SignOutTests: XCTestCase {
    
    var mockFirebaseSignOut = MockFirebaseSignOut()
    var systemUnderTest: SignOut?
    override func setUp() {
        super.setUp()
        systemUnderTest = SignOut(mockFirebaseSignOut)
    }
    
    func testThatTheFirebaseSignOutMethodGetsInvokedWhenSignOutIsCalledAndDoesNotThrow() {
        var signOutThrown = false
        stub(mockFirebaseSignOut) { (mock) in
            _ = when(mock.signOut().thenDoNothing())
        }
        do {
            try  systemUnderTest?.signOut()
        } catch _ {
            signOutThrown = true
            XCTFail()
        }
        XCTAssertFalse(signOutThrown)
    }
    
    func testThatWhenTheFirebaseSignOutThrowsThenTheSignOutOfTheSystemUnderTestThrows() {
        var signOutThrown = false
        stub(mockFirebaseSignOut) { (mock) in
            _ = when(mock.signOut().thenThrow(NSError(domain: "error", code: 1, userInfo: nil)))
        }
        do {
            try  systemUnderTest?.signOut()
            XCTFail()
        } catch _ {
            signOutThrown = true
            XCTAssertTrue(signOutThrown)
        }
    }
    
}
