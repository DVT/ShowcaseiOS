//
//  LoginInteractorTests.swift
//  Showcase-iOSTests
//
//  Created by Lehlohonolo Mbele on 2018/04/23.
//  Copyright © 2018 DVT. All rights reserved.
//

import XCTest
import Cuckoo
@testable import Showcase_iOS

class LoginInteractorTests: XCTestCase {
    
    var systemUnderTest: LoginInteractor!
    var mockLoginPresenter = MockLoginInteractorPresentable()
    var mockUserAuthenticator = MockLoginAuthenticating()
    
    override func setUp() {
        super.setUp()
        systemUnderTest = LoginInteractor()
        systemUnderTest.userAuthenticator = mockUserAuthenticator
        systemUnderTest.loginPresenter = mockLoginPresenter
    }
    
    func testThatTheSignedInSuccesfullyMethodOfTheLoginPresenterGetsCalledWhenUserIsAuthorized() {
        stub(mockLoginPresenter) { (mock) in
            let _ = when(mock.signedInSuccessfully().thenDoNothing())
        }
        stub(mockUserAuthenticator) { (mock) in
            let _ = when(mock.signIn(withEmail: anyString(), password: anyString(), completion: any()).then({ (email, password, completion) in
                let fakeUser = MockUser()
                completion(fakeUser, nil)
            }))
        }
        systemUnderTest.signIn(withEmail: "", password: "")
        verify(mockLoginPresenter, times(1)).signedInSuccessfully()
    }
    
    func testThatTheSignInFailedMethodOfTheLoginPresenterGetsCalledWhenUserIsNotAuthorized() {
        stub(mockLoginPresenter) { (mock) in
            let _ = when(mock.failedToSign(withError: any()).thenDoNothing())
        }
        stub(mockUserAuthenticator) { (mock) in
            let _ = when(mock.signIn(withEmail: anyString(), password: anyString(), completion: any()).then({ (email, password, completion) in
                let error = NSError(domain: "someError_forNow", code: 1, userInfo: nil)
                completion(nil, error)
            }))
        }
        systemUnderTest.signIn(withEmail: "", password: "")
        verify(mockLoginPresenter, times(1)).failedToSign(withError: any())
    }
}
