//
//  UserAuthenticationTests.swift
//  Showcase-iOSTests
//
//  Created by Lehlohonolo Mbele on 2018/04/18.
//  Copyright © 2018 DVT. All rights reserved.
//

import XCTest
import Cuckoo
@testable import Showcase_iOS

class UserAuthenticationTests: XCTestCase {
    
    var mockFirebaseAuthentication: MockFirebaseAuthenticating = MockFirebaseAuthenticating()
    var serviceUnderTest: UserAuthentication?
    var testEmail: String?
    override func setUp() {
        super.setUp()
        testEmail = "test@gmail.com"
        serviceUnderTest = UserAuthentication()
        serviceUnderTest?.authenticator = mockFirebaseAuthentication
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testThatSignInMethodCompletesWithAUserWhenAuthenticationIsSuccesfull() {
        stub(mockFirebaseAuthentication) { (mock) in
            let _ = when(mock.signIn(withEmail: anyString(), password: anyString(), completion: any()).then({ (email, password, completion) in
                let fakeUser = User(email: email)
                completion(fakeUser,nil)
            }))
        }
        serviceUnderTest?.signIn(withEmail: testEmail!, password: "") { (user, error) in
            XCTAssertEqual(user as! User, User(email: self.testEmail!))
        }
        verify(mockFirebaseAuthentication, times(1)).signIn(withEmail: anyString(), password: anyString(), completion: any())
    }
    
    func testThatSignInMethodCompletesWithAnErrorWhenAuthenticationIsUnSuccesfull() {
        stub(mockFirebaseAuthentication) { (mock) in
            let _ = when(mock.signIn(withEmail: anyString(), password: anyString(), completion: any()).then({ (email, password, completion) in
                completion(nil ,AuthError.notAuthenticated)
            }))
        }
        serviceUnderTest?.signIn(withEmail: "", password: "") { (user, error) in
            XCTAssertEqual(error as! AuthError, AuthError.notAuthenticated)
        }
        verify(mockFirebaseAuthentication, times(1)).signIn(withEmail: anyString(), password: anyString(), completion: any())
    }
    
    
    class User: Equatable {
        let email: String
        
        init(email: String) {
            self.email = email
        }
        
        static func == (lhs: UserAuthenticationTests.User, rhs: UserAuthenticationTests.User) -> Bool {
            return lhs.email == rhs.email
        }
    }
    
    enum AuthError: Error {
        case notAuthenticated
    }
    
}
