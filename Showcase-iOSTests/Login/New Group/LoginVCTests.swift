//
//  LoginVCTests.swift
//  Showcase-iOSTests
//
//  Created by Lehlohonolo Mbele on 2018/05/10.
//  Copyright © 2018 DVT. All rights reserved.
//

import XCTest
import Cuckoo
@testable import Showcase_iOS

class LoginVCTests: XCTestCase {
    
    let systemUnderTest = LoginViewController()
    var mockKeyboardDelegate = MockKeyBoardDelegate()
    var mockKeyBoardObservable = MockKeyboardObservable()
    var mockLoginPresenter = LoginPresenter()
    var mockNotificationCenter = MockNotificationCenterDelegate()
    
    override func setUp() {
        super.setUp()
        systemUnderTest.keyBoardDelegate = mockKeyboardDelegate
        systemUnderTest.keyBoardObserver = mockKeyBoardObservable
        systemUnderTest.notificationCenter = mockNotificationCenter
    }
    
    func testThatWhenViewWillDisappearMethodGetsCalledThenRemoveObserversIsInvoked() {
        stub(mockKeyBoardObservable) { (mock) in
            _ = when(mock.removeObservers().then {})
        }
        systemUnderTest.viewWillDisappear(true)
        verify(mockKeyBoardObservable, times(1)).removeObservers()
    }
    
    func testThatWhenViewWillAppearMethodGetsCalledTheAddObserversIsInvoked() {
        stub(mockKeyBoardObservable) { (mock) in
            _ = when(mock.addObservers().thenDoNothing())
        }
        stub(mockKeyboardDelegate) { (mock) in
            _ = when(mock.hideKeyboardWhenTappedAround().thenDoNothing())
        }
        systemUnderTest.viewWillAppear(true)
        verify(mockKeyBoardObservable, times(1)).addObservers()
    }
    
    func testThatWhenViewWillAppearMethodGetsCalledTheHideKeyBoardWhenTappedAroundIsInvoked() {
        stub(mockKeyBoardObservable) { (mock) in
            _ = when(mock.addObservers().thenDoNothing())
        }
        stub(mockKeyboardDelegate) { (mock) in
            _ = when(mock.hideKeyboardWhenTappedAround().thenDoNothing())
        }
        systemUnderTest.viewWillAppear(true)
        verify(mockKeyboardDelegate, times(1)).hideKeyboardWhenTappedAround()
    }
    
    func testThatWhenRemoveObserversGetsCalledThenNotificationCentersRemoveObserversMethodIsInvoked() {
        stub(mockNotificationCenter) { (mock) in
            _ = when(mock.removeObserver(any()).thenDoNothing())
        }
        systemUnderTest.removeObservers()
        verify(mockNotificationCenter, times(1)).removeObserver(any())
    }
    
    func testThatWhenAddObserversGetsCalledThenNotificationCentersAddObserversMethodIsInvokedTwice() {
        stub(mockNotificationCenter) { (mock) in
            _ = when(mock.addObserver(any(), selector: any(), name: any(), object: any()).thenDoNothing())
        }
        systemUnderTest.addObservers()
        verify(mockNotificationCenter, times(2)).addObserver(any(), selector: any(), name: any(), object: any())
    }
    
    func testThatGivenAValidHeightUpdateContentInsetWillReturnAUIEdgeInsetWithBottomThatEqualsTheGivenHeight() {
        let height: CGFloat = 4.5
        let contentInset = systemUnderTest.updateContentInset(keyBoardHeight: height)
        let expectedResult = UIEdgeInsets(top: 0, left: 0, bottom: height, right: 0)
        XCTAssertEqual(contentInset, expectedResult)
    }
    
    func testThatWhenTheLoginPresenterGetsCalledWithWrongPasswordThenAuthenticationFailureGetsInvoked() {
        systemUnderTest.loginPresenter = mockLoginPresenter
        systemUnderTest.loginPresenter?.login(withEmail: "", password: "")
    }
    
    override func tearDown() {
        systemUnderTest.keyBoardDelegate = nil
        systemUnderTest.keyBoardObserver = nil
        super.tearDown()
    }
}
