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
    
    override func setUp() {
        super.setUp()
    }
    
    func testThatSignInMethodGetsCalledOnlyOnce() {
        stub(mockUserAuthentication) { (mock) in
            let _ = when(mock.signIn(withEmail: anyString(), password: anyString(), completion: any()).then({ _, _, _ in }))
        }
        mockUserAuthentication.signIn(withEmail: "", password: "") { (_, _) in }
        verify(mockUserAuthentication, times(1)).signIn(withEmail: anyString(), password: anyString(), completion: any())
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
}
