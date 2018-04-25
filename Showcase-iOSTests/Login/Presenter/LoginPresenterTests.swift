//
//  LoginPresenterTests.swift
//  Showcase-iOSTests
//
//  Created by Lehlohonolo Mbele on 2018/04/24.
//  Copyright © 2018 DVT. All rights reserved.
//

import XCTest
import Cuckoo
@testable import Showcase_iOS

class LoginPresenterTests: XCTestCase {
    
    var systemUnderTest: LoginPresenter!
    var mockLoginViewer = MockPresenterViewable()
    var mockLoginInteractor = MockPresenterInteractable()
    
    override func setUp() {
        super.setUp()
        systemUnderTest = LoginPresenter(mockLoginViewer, mockLoginInteractor)
    }
    
    func testThatTheSignInMethodOfTheLoginInteractorGetsCalled() {
        stub(mockLoginInteractor) { (mock) in
            let _  = when(mock.signIn(withEmail: anyString(), password: anyString()).thenDoNothing())
        }
        systemUnderTest.login(withEmail: "hloks@gmail.com", password: "dbhjbdhjb")
        verify(mockLoginInteractor, times(1)).signIn(withEmail: anyString(), password: anyString())
    }
    
    func testThatWhenEmailIsInvalidThenShowEmailValidationErrorIsPresented() {
        stub(mockLoginViewer) { (mock) in
            let _ = when(mock.showEmailValidationFailure(withError: any()).thenDoNothing())
        }
        systemUnderTest.login(withEmail: "", password: "shdjk")
        verify(mockLoginViewer, times(1)).showEmailValidationFailure(withError: any())
    }
    

    func testThatWhenPasswordIsInvalidThenShowPasswordValidationErrorIsPresented() {
        stub(mockLoginViewer) { (mock) in
            let _ = when(mock.showPasswordValidationFailure(withError: any()).thenDoNothing())
        }
        systemUnderTest.login(withEmail: "hloks@gmail.com", password: "")
        verify(mockLoginViewer, times(1)).showPasswordValidationFailure(withError: any())
    }
    
    func testThatWhenBothEmailAndPasswordAreInvalidThenAnInputValidationErrorIsPresented() {
        stub(mockLoginViewer) { (mock) in
            let _ = when(mock.showInvalidInputsFailure(withError: any()).thenDoNothing())
        }
        systemUnderTest.login(withEmail: "", password: "")
        verify(mockLoginViewer, times(1)).showInvalidInputsFailure(withError: any())
    }
    
}
