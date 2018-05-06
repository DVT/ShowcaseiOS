////
////  UserAuthenticationTests.swift
////  Showcase-iOSTests
////
////  Created by Lehlohonolo Mbele on 2018/04/18.
////  Copyright © 2018 DVT. All rights reserved.
////
//
//import XCTest
//import Cuckoo
//@testable import Showcase_iOS
//
//class UserAuthenticationTests: XCTestCase {
//    
//    var mockFirebaseAuthentication = MockFirebaseLoginAuthenticating()
//    var serviceUnderTest: UserAuthentication!
//    var testEmail: String?
//    override func setUp() {
//        super.setUp()
//        testEmail = "test@gmail.com"
//        serviceUnderTest = UserAuthentication(mockFirebaseAuthentication)
//    }
//
//    override func tearDown() {
//        super.tearDown()
//    }
//
//    func testThatSignInMethodCompletesWithAUserWhenAuthenticationIsSuccesfull() {
//        let fakeUser = MockUser()
//        stub(mockFirebaseAuthentication) { (mock) in
//            let _ = when(mock.signIn(withEmail: anyString(), password: anyString(), completion: any()).then({ (email, password, completion) in
//                completion(fakeUser,nil)
//            }))
//        }
//        serviceUnderTest?.signIn(withEmail: testEmail!, password: "") { (user, error) in
//            XCTAssertEqual(user!.uid , fakeUser.uid)
//        }
//        verify(mockFirebaseAuthentication, times(1)).signIn(withEmail: anyString(), password: anyString(), completion: any())
//    }
//
//    func testThatSignInMethodCompletesWithAnErrorWhenAuthenticationIsUnSuccesfull() {
//        stub(mockFirebaseAuthentication) { (mock) in
//            let _ = when(mock.signIn(withEmail: anyString(), password: anyString(), completion: any()).then({ (email, password, completion) in
//                completion(nil ,AuthenticationError.notAuthenticated)
//            }))
//        }
//        serviceUnderTest?.signIn(withEmail: "", password: "") { (user, error) in
//            XCTAssertEqual(error as! AuthenticationError, AuthenticationError.notAuthenticated)
//        }
//        verify(mockFirebaseAuthentication, times(1)).signIn(withEmail: anyString(), password: anyString(), completion: any())
//    }
//}
//
//class MockUser: FirUserProtocol {
//    var uid: String = "user"
//}
