//
//  ContactUsInteractableTests.swift
//  Showcase-iOSTests
//
//  Created by Kagiso Mohajane on 2018/04/30.
//  Copyright © 2018 DVT. All rights reserved.
//

import XCTest
import Cuckoo
import Firebase
@testable import Showcase_iOS

class ContactUsInteractableTests: XCTestCase {
    
    //MARK: Mockables
    
    var mockDatabaseRefeceabele = MockDataReferenceable()
    var mockContactUsPresentable = MockContactUsPresentable()
    
    //MARK: System(s) under test
    
    var systeUnderTest: ContactUsInteractableImplementation?
    var mockError: NSError?
    
    //MARK: Test lifcycle method(s)
    
    override func setUp() {
        super.setUp()
        mockError = NSError(domain: "FirebaseError", code: 1, userInfo: nil)
        let contactUsInteractor = ContactUsInteractableImplementation()
        contactUsInteractor.contactUsPresenter = mockContactUsPresentable
        contactUsInteractor.dataReference = mockDatabaseRefeceabele        
        systeUnderTest = contactUsInteractor
    }
    
    //MARK: Tests
    
    func testThatRetrievingFirbaseContactsReturnsAValidErrorWhenFirebaseContactRetrieverReturnsAnError() {
        setUpMockStubs()
        stub(mockDatabaseRefeceabele) { mock in
            let _ = when(mock.observe(eventType: any(), with: any(), withCancel: any()).then({ _, _, errorCompletion in
                errorCompletion(self.mockError!)
            }))
        }
        stub(mockContactUsPresentable) { mock in
            _ = when(mock.onRetrieveOfficesFailed(with: any()).then({ error in
                let errorResult = error as NSError
                XCTAssertEqual(errorResult, self.mockError!)
            }))
        }
        systeUnderTest?.retrieveContacts()
        verify(mockContactUsPresentable, times(1)).onRetrieveOfficesFailed(with: any())
    }
    
    func testThatWhenFirebaseContactRetrieverReturnsAValidEmptySnapshotThenOnRetrieveOfficesCompletesWithAnEmptyArrayOfOffices() {
        setUpMockStubs()
        stub(mockDatabaseRefeceabele) { mock in
            let _ = when(mock.observe(eventType: any(), with: any(), withCancel: any()).then({ _, successCompletion, _ in
                let mockSnapShot = DataSnapshot()
                successCompletion(mockSnapShot)
            }))
        }
        
        stub(mockContactUsPresentable) { mock in
            _ = when(mock.onRetrieveOfficesComplete(with: any()).then({ (offices) in
                XCTAssertTrue(offices.isEmpty, "Offices is not empty")
            }))
        }
        
        systeUnderTest?.retrieveContacts()
        verify(mockContactUsPresentable, times(1)).onRetrieveOfficesComplete(with: any())
    }
    
    func setUpMockStubs() {
        stub(mockDatabaseRefeceabele) { (mock) in
            let _ = when(mock.databaseReference().then({ return self.mockDatabaseRefeceabele }))
            let _ = when(mock.child(any()).then({ _ in return self.mockDatabaseRefeceabele}))
            
        }
    }
    
}
