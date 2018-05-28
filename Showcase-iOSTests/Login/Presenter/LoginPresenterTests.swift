//
//  LoginPresenterTests.swift
//  Showcase-iOSTests
//
//  Created by Lehlohonolo Mbele on 2018/04/24.
//  Copyright © 2018 DVT. All rights reserved.
//

import XCTest
import FirebaseAuth
import Cuckoo
@testable import Showcase_iOS

class LoginPresenterTests: XCTestCase {

    var systemUnderTest: LoginPresenter!
    var mockLoginViewer = MockLoginPresenterViewable()
    var mockLoginInteractor = MockLoginPresenterInteractable()
    let mockLoginPresenter = MockLoginInteractorPresentable()
    let mockUserDefaults = MockUserDefaultsProtocol()
    
    override func setUp() {
        super.setUp()
        systemUnderTest = LoginPresenter()
        systemUnderTest.loginViewer = mockLoginViewer
        systemUnderTest.loginInteractor = mockLoginInteractor
        systemUnderTest.userDefaults = mockUserDefaults
        systemUnderTest.loginViewer = mockLoginViewer
    }

    func testThatTheSignInMethodOfTheLoginInteractorGetsCalled() {
        stub(mockLoginInteractor) { (mock) in
            let _  = when(mock.signIn(withEmail: anyString(), password: anyString()).thenDoNothing())
        }
        stub(mockLoginViewer) { (mock) in
            _ = when(mock.startLoadingAnimation().thenDoNothing())
        }
        systemUnderTest.login(withEmail: "hloks@gmail.com", password: "dbhjbdhjb")
        verify(mockLoginViewer, times(1)).startLoadingAnimation()
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

    func testWhenFailedToSignInMethodIsCalledThenTheLoginViewerShowFailureWithCorrectMessage() {
        stub(mockLoginViewer) { (mock) in
             _ = when(mock.showAuthenticationFailure(withMessage: any()).thenDoNothing())
             _ = when(mock.stopLoadingAnimation().thenDoNothing())
        }
        systemUnderTest.failedToSign(withError: AuthenticationError.notAuthenticated)
        verify(mockLoginViewer, times(1)).stopLoadingAnimation()
        verify(mockLoginViewer, times(1)).showAuthenticationFailure(withMessage: any())
    }

    func testThatWhenSignedInSuccesfullyMethodGetsCalledThenShowSuccessIsInvoked() {
        stub(mockLoginViewer) { mock in
            _ = when(mock.showSuccess().thenDoNothing())
            _ = when(mock.stopLoadingAnimation().thenDoNothing())
        }
        
        stub(mockUserDefaults) { (mock) in
            _ = when(mock.set(value: any(), forKey: any()).thenDoNothing())
        }
        
        systemUnderTest.signedInSuccessfully()
        verify(mockUserDefaults, times(1)).set(value: any(), forKey: any())
        verify(mockLoginViewer, times(1)).stopLoadingAnimation()
        verify(mockLoginViewer, times(1)).showSuccess()
    }
    
    func testThatWhenShowSuccessIfAlreadyLoggedInGetsCalledAndTheUserHasLoggedInBeforeThatTheShowSuccessWillBeInvoked() {
        stub(mockLoginViewer) { (mock) in
            let _ = when(mock.showSuccess().thenDoNothing())
        }
        
        stub(mockUserDefaults) { (mock) in
            _ = when(mock.bool(forKey: any()).thenReturn(true))
        }
        
        systemUnderTest.showSuccesWhenUserIsAlreadyAuthenticated()
        verify(mockUserDefaults, times(1)).bool(forKey: any())
        verify(mockLoginViewer, times(1)).showSuccess()
    }
    
    
    func testThatWhenShowSuccessIfAlreadyLoggedInGetsCalledAndTheUserHasNotLoggedInBeforeThatTheShowSuccessWillNotBeInvoked() {
        stub(mockLoginViewer) { (mock) in
            let _ = when(mock.showSuccess().thenDoNothing())
        }
        
        stub(mockUserDefaults) { (mock) in
            _ = when(mock.bool(forKey: any()).thenReturn(false))
        }
        
        systemUnderTest.showSuccesWhenUserIsAlreadyAuthenticated()
        verify(mockUserDefaults, times(1)).bool(forKey: any())
        verify(mockLoginViewer, times(0)).showSuccess()
    }
    
    func testThatWhenSignedInSuccesfullyMethodGetsCalledThenTheUserDefaultsValueGetsSetToTrueWithValidKeyValuePair() {
        var userDefaultsDictionary:[String: Bool] = [:]
        
        stub(mockLoginViewer) { (mock) in
            _ = when(mock.showSuccess().thenDoNothing())
            _ = when(mock.stopLoadingAnimation().thenDoNothing())
        }
        
        stub(mockUserDefaults) { (mock) in
            _ = when(mock.set(value: any(), forKey: any()).then({ (value, key) in
                userDefaultsDictionary["\(key)"] = value
            }))
        }
        systemUnderTest.signedInSuccessfully()
        XCTAssertTrue(userDefaultsDictionary["\(UserDefaultsKeys.isLoggedIn.rawValue)"]!)
        verify(mockUserDefaults, times(1)).set(value: any(), forKey: any())
    }

}
