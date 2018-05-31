//
//  SignOutInteractorTests.swift
//  Showcase-iOSTests
//
//  Created by Lehlohonolo Mbele on 2018/05/31.
//  Copyright © 2018 DVT. All rights reserved.
//

import XCTest
import Cuckoo
@testable import Showcase_iOS

class SignOutInteractorTests: XCTestCase {
    
    var systemUnderTest = SignOutInteractor()
    var mockHomePresenter = MockHomePresentable()
    var mockUserSignOut = MockUserSignOut()

    override func setUp() {
        super.setUp()
        systemUnderTest.homePresenter = mockHomePresenter
        systemUnderTest.userSignOut = mockUserSignOut
    }
    
    func testThatIfTheUserSignOutMethodDoesNotthrowThenTheHomePresenterSignedOutMethodGetsInvoked() {
        stub(mockUserSignOut) { (mock) in
            _ = when(mock.signOut().thenDoNothing())
        }
        stub(mockHomePresenter) { (mock) in
            _ = when(mock.signedOut().thenDoNothing())
        }
        
        systemUnderTest.signOut()
        verify(mockUserSignOut, times(1)).signOut()
        verify(mockHomePresenter, times(1)).signedOut()
    }

}
