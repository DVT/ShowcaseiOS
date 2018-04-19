//
//  UserAuthenticationTests.swift
//  Showcase-iOSTests
//
//  Created by Lehlohonolo Mbele on 2018/04/18.
//  Copyright © 2018 DVT. All rights reserved.
//

import XCTest
import Cuckoo

class UserAuthenticationTests: XCTestCase {
    
    let mockUserAuthentication = MockAuthenticating()
    var testEmail: String?
    override func setUp() {
        super.setUp()
        testEmail = "test@gmail.com"
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testThatSignInMethodGetsCalledOnlyOnce() {
        stub(mockUserAuthentication) { (mock) in
            let _ = when(mock.signIn(withEmail: anyString(), password: anyString(), completion: any()).then({ _, _, _ in }))
        }
        mockUserAuthentication.signIn(withEmail: "", password: "") { (_, _) in }
        verify(mockUserAuthentication, times(1)).signIn(withEmail: anyString(), password: anyString(), completion: any())
    }
    
    func testThatSignInMethodCompletesWithAUser() {
        var userAuthenticated: Bool = false
        stub(mockUserAuthentication) { (mock) in
            let _ = when(mock.signIn(withEmail: anyString(), password: anyString(), completion: any()).then({ (email, _, completion) in
                let fakeUser = User(email: email)
                completion(fakeUser, nil)
            }))
        }
        mockUserAuthentication.signIn(withEmail: testEmail!, password: "") { (user, _) in
            userAuthenticated = (user as! User) == User(email: self.testEmail!)
        }
        XCTAssertTrue(userAuthenticated)
        verify(mockUserAuthentication).signIn(withEmail: anyString(), password: anyString(), completion: any())
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
}
