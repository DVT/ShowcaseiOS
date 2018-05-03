// MARK: - Mocks generated from file: Showcase-iOS/Contact Us/Interactor/ContactUsInteractable.swift at 2018-05-03 11:41:08 +0000


import Cuckoo
@testable import Showcase_iOS

import Foundation

class MockContactUsInteractable: ContactUsInteractable, Cuckoo.ProtocolMock {
    typealias MocksType = ContactUsInteractable
    typealias Stubbing = __StubbingProxy_ContactUsInteractable
    typealias Verification = __VerificationProxy_ContactUsInteractable
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    
    // ["name": "dataReference", "stubType": "ProtocolToBeStubbedProperty", "@type": "InstanceVariable", "type": "DataReferenceable?", "isReadOnly": false, "accessibility": ""]
     var dataReference: DataReferenceable? {
        get {
            
            return cuckoo_manager.getter("dataReference", superclassCall: Cuckoo.MockManager.crashOnProtocolSuperclassCall())
            
        }
        
        set {
            
            cuckoo_manager.setter("dataReference", value: newValue, superclassCall: Cuckoo.MockManager.crashOnProtocolSuperclassCall())
            
        }
        
    }
    
    // ["name": "contactUsPresenter", "stubType": "ProtocolToBeStubbedProperty", "@type": "InstanceVariable", "type": "ContactUsPresentable", "isReadOnly": false, "accessibility": ""]
     var contactUsPresenter: ContactUsPresentable {
        get {
            
            return cuckoo_manager.getter("contactUsPresenter", superclassCall: Cuckoo.MockManager.crashOnProtocolSuperclassCall())
            
        }
        
        set {
            
            cuckoo_manager.setter("contactUsPresenter", value: newValue, superclassCall: Cuckoo.MockManager.crashOnProtocolSuperclassCall())
            
        }
        
    }
    

    

    
    // ["name": "retrieveContacts", "returnSignature": "", "fullyQualifiedName": "retrieveContacts()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func retrieveContacts()  {
        
            return cuckoo_manager.call("retrieveContacts()",
                parameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_ContactUsInteractable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    var dataReference: Cuckoo.ProtocolToBeStubbedProperty<MockContactUsInteractable, DataReferenceable?> {
	        return .init(manager: cuckoo_manager, name: "dataReference")
	    }
	    
	    var contactUsPresenter: Cuckoo.ProtocolToBeStubbedProperty<MockContactUsInteractable, ContactUsPresentable> {
	        return .init(manager: cuckoo_manager, name: "contactUsPresenter")
	    }
	    
	    
	    func retrieveContacts() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockContactUsInteractable.self, method: "retrieveContacts()", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_ContactUsInteractable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    var dataReference: Cuckoo.VerifyProperty<DataReferenceable?> {
	        return .init(manager: cuckoo_manager, name: "dataReference", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var contactUsPresenter: Cuckoo.VerifyProperty<ContactUsPresentable> {
	        return .init(manager: cuckoo_manager, name: "contactUsPresenter", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func retrieveContacts() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("retrieveContacts()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class ContactUsInteractableStub: ContactUsInteractable {
    
     var dataReference: DataReferenceable? {
        get {
            return DefaultValueRegistry.defaultValue(for: (DataReferenceable?).self)
        }
        
        set { }
        
    }
    
     var contactUsPresenter: ContactUsPresentable {
        get {
            return DefaultValueRegistry.defaultValue(for: (ContactUsPresentable).self)
        }
        
        set { }
        
    }
    

    

    
     func retrieveContacts()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Contact Us/Presenter/ContactUsPresentable.swift at 2018-05-03 11:41:08 +0000


import Cuckoo
@testable import Showcase_iOS

import Foundation

class MockContactUsPresentable: ContactUsPresentable, Cuckoo.ProtocolMock {
    typealias MocksType = ContactUsPresentable
    typealias Stubbing = __StubbingProxy_ContactUsPresentable
    typealias Verification = __VerificationProxy_ContactUsPresentable
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "onRetrieveOfficesComplete", "returnSignature": "", "fullyQualifiedName": "onRetrieveOfficesComplete(with: [Office])", "parameterSignature": "with offices: [Office]", "parameterSignatureWithoutNames": "offices: [Office]", "inputTypes": "[Office]", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "offices", "call": "with: offices", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("with"), name: "offices", type: "[Office]", range: CountableRange(87..<109), nameRange: CountableRange(87..<91))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func onRetrieveOfficesComplete(with offices: [Office])  {
        
            return cuckoo_manager.call("onRetrieveOfficesComplete(with: [Office])",
                parameters: (offices),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "onRetrieveOfficesFailed", "returnSignature": "", "fullyQualifiedName": "onRetrieveOfficesFailed(with: Error)", "parameterSignature": "with error: Error", "parameterSignatureWithoutNames": "error: Error", "inputTypes": "Error", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "error", "call": "with: error", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("with"), name: "error", type: "Error", range: CountableRange(144..<161), nameRange: CountableRange(144..<148))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func onRetrieveOfficesFailed(with error: Error)  {
        
            return cuckoo_manager.call("onRetrieveOfficesFailed(with: Error)",
                parameters: (error),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_ContactUsPresentable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func onRetrieveOfficesComplete<M1: Cuckoo.Matchable>(with offices: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([Office])> where M1.MatchedType == [Office] {
	        let matchers: [Cuckoo.ParameterMatcher<([Office])>] = [wrap(matchable: offices) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockContactUsPresentable.self, method: "onRetrieveOfficesComplete(with: [Office])", parameterMatchers: matchers))
	    }
	    
	    func onRetrieveOfficesFailed<M1: Cuckoo.Matchable>(with error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockContactUsPresentable.self, method: "onRetrieveOfficesFailed(with: Error)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_ContactUsPresentable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func onRetrieveOfficesComplete<M1: Cuckoo.Matchable>(with offices: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == [Office] {
	        let matchers: [Cuckoo.ParameterMatcher<([Office])>] = [wrap(matchable: offices) { $0 }]
	        return cuckoo_manager.verify("onRetrieveOfficesComplete(with: [Office])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func onRetrieveOfficesFailed<M1: Cuckoo.Matchable>(with error: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("onRetrieveOfficesFailed(with: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class ContactUsPresentableStub: ContactUsPresentable {
    

    

    
     func onRetrieveOfficesComplete(with offices: [Office])  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func onRetrieveOfficesFailed(with error: Error)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Dashboard/Interactor/HomePresenterInteractable.swift at 2018-05-03 11:41:08 +0000

//
//  HomePresenterInteractable.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/02.
//  Copyright © 2018 DVT. All rights reserved.
//

import Cuckoo
@testable import Showcase_iOS

import Foundation

class MockHomePresenterInteractable: HomePresenterInteractable, Cuckoo.ProtocolMock {
    typealias MocksType = HomePresenterInteractable
    typealias Stubbing = __StubbingProxy_HomePresenterInteractable
    typealias Verification = __VerificationProxy_HomePresenterInteractable
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "fetchShowcaseApps", "returnSignature": "", "fullyQualifiedName": "fetchShowcaseApps()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func fetchShowcaseApps()  {
        
            return cuckoo_manager.call("fetchShowcaseApps()",
                parameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_HomePresenterInteractable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func fetchShowcaseApps() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockHomePresenterInteractable.self, method: "fetchShowcaseApps()", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_HomePresenterInteractable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func fetchShowcaseApps() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("fetchShowcaseApps()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class HomePresenterInteractableStub: HomePresenterInteractable {
    

    

    
     func fetchShowcaseApps()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Dashboard/Presenter/HomePresentable.swift at 2018-05-03 11:41:08 +0000

//
//  HomePresentable.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/02.
//  Copyright © 2018 DVT. All rights reserved.
//

import Cuckoo
@testable import Showcase_iOS

import Foundation

class MockHomePresentable: HomePresentable, Cuckoo.ProtocolMock {
    typealias MocksType = HomePresentable
    typealias Stubbing = __StubbingProxy_HomePresentable
    typealias Verification = __VerificationProxy_HomePresentable
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "onFetchShowcaseAppsSuccess", "returnSignature": "", "fullyQualifiedName": "onFetchShowcaseAppsSuccess(with: [ShowcaseApp])", "parameterSignature": "with showcaseApps: [ShowcaseApp]", "parameterSignatureWithoutNames": "showcaseApps: [ShowcaseApp]", "inputTypes": "[ShowcaseApp]", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "showcaseApps", "call": "with: showcaseApps", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("with"), name: "showcaseApps", type: "[ShowcaseApp]", range: CountableRange(229..<261), nameRange: CountableRange(229..<233))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func onFetchShowcaseAppsSuccess(with showcaseApps: [ShowcaseApp])  {
        
            return cuckoo_manager.call("onFetchShowcaseAppsSuccess(with: [ShowcaseApp])",
                parameters: (showcaseApps),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "onFetchShowcaseAppsFailure", "returnSignature": "", "fullyQualifiedName": "onFetchShowcaseAppsFailure(with: DatabaseError)", "parameterSignature": "with error: DatabaseError", "parameterSignatureWithoutNames": "error: DatabaseError", "inputTypes": "DatabaseError", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "error", "call": "with: error", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("with"), name: "error", type: "DatabaseError", range: CountableRange(299..<324), nameRange: CountableRange(299..<303))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func onFetchShowcaseAppsFailure(with error: DatabaseError)  {
        
            return cuckoo_manager.call("onFetchShowcaseAppsFailure(with: DatabaseError)",
                parameters: (error),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_HomePresentable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func onFetchShowcaseAppsSuccess<M1: Cuckoo.Matchable>(with showcaseApps: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([ShowcaseApp])> where M1.MatchedType == [ShowcaseApp] {
	        let matchers: [Cuckoo.ParameterMatcher<([ShowcaseApp])>] = [wrap(matchable: showcaseApps) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockHomePresentable.self, method: "onFetchShowcaseAppsSuccess(with: [ShowcaseApp])", parameterMatchers: matchers))
	    }
	    
	    func onFetchShowcaseAppsFailure<M1: Cuckoo.Matchable>(with error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(DatabaseError)> where M1.MatchedType == DatabaseError {
	        let matchers: [Cuckoo.ParameterMatcher<(DatabaseError)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockHomePresentable.self, method: "onFetchShowcaseAppsFailure(with: DatabaseError)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_HomePresentable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func onFetchShowcaseAppsSuccess<M1: Cuckoo.Matchable>(with showcaseApps: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == [ShowcaseApp] {
	        let matchers: [Cuckoo.ParameterMatcher<([ShowcaseApp])>] = [wrap(matchable: showcaseApps) { $0 }]
	        return cuckoo_manager.verify("onFetchShowcaseAppsSuccess(with: [ShowcaseApp])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func onFetchShowcaseAppsFailure<M1: Cuckoo.Matchable>(with error: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == DatabaseError {
	        let matchers: [Cuckoo.ParameterMatcher<(DatabaseError)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("onFetchShowcaseAppsFailure(with: DatabaseError)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class HomePresentableStub: HomePresentable {
    

    

    
     func onFetchShowcaseAppsSuccess(with showcaseApps: [ShowcaseApp])  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func onFetchShowcaseAppsFailure(with error: DatabaseError)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Firebase/Service/DataReferenceable.swift at 2018-05-03 11:41:08 +0000


import Cuckoo
@testable import Showcase_iOS

import Firebase
import FirebaseDatabase
import Foundation

class MockDataReferenceable: DataReferenceable, Cuckoo.ProtocolMock {
    typealias MocksType = DataReferenceable
    typealias Stubbing = __StubbingProxy_DataReferenceable
    typealias Verification = __VerificationProxy_DataReferenceable
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "databaseReference", "returnSignature": " -> DataReferenceable?", "fullyQualifiedName": "databaseReference() -> DataReferenceable?", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Optional<DataReferenceable>", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubFunction"]
     func databaseReference()  -> DataReferenceable? {
        
            return cuckoo_manager.call("databaseReference() -> DataReferenceable?",
                parameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "child", "returnSignature": " -> DataReferenceable?", "fullyQualifiedName": "child(_: Path) -> DataReferenceable?", "parameterSignature": "_ path: Path", "parameterSignatureWithoutNames": "path: Path", "inputTypes": "Path", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "path", "call": "path", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "path", type: "Path", range: CountableRange(156..<168), nameRange: CountableRange(0..<0))], "returnType": "Optional<DataReferenceable>", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubFunction"]
     func child(_ path: Path)  -> DataReferenceable? {
        
            return cuckoo_manager.call("child(_: Path) -> DataReferenceable?",
                parameters: (path),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "observe", "returnSignature": "", "fullyQualifiedName": "observe(eventType: DataEventType, with: @escaping (DataSnapshot) -> Void, withCancel: @escaping (Error) -> Void)", "parameterSignature": "eventType: DataEventType, with snapshot: @escaping (DataSnapshot) -> Void, withCancel cancel: @escaping (Error) -> Void", "parameterSignatureWithoutNames": "eventType: DataEventType, snapshot: @escaping (DataSnapshot) -> Void, cancel: @escaping (Error) -> Void", "inputTypes": "DataEventType, (DataSnapshot) -> Void, (Error) -> Void", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": true, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "eventType, snapshot, cancel", "call": "eventType: eventType, with: snapshot, withCancel: cancel", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("eventType"), name: "eventType", type: "DataEventType", range: CountableRange(209..<233), nameRange: CountableRange(209..<218)), CuckooGeneratorFramework.MethodParameter(label: Optional("with"), name: "snapshot", type: "@escaping (DataSnapshot) -> Void", range: CountableRange(235..<282), nameRange: CountableRange(235..<239)), CuckooGeneratorFramework.MethodParameter(label: Optional("withCancel"), name: "cancel", type: "@escaping (Error) -> Void", range: CountableRange(284..<328), nameRange: CountableRange(284..<294))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func observe(eventType: DataEventType, with snapshot: @escaping (DataSnapshot) -> Void, withCancel cancel: @escaping (Error) -> Void)  {
        
            return cuckoo_manager.call("observe(eventType: DataEventType, with: @escaping (DataSnapshot) -> Void, withCancel: @escaping (Error) -> Void)",
                parameters: (eventType, snapshot, cancel),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_DataReferenceable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func databaseReference() -> Cuckoo.ProtocolStubFunction<(), Optional<DataReferenceable>> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockDataReferenceable.self, method: "databaseReference() -> DataReferenceable?", parameterMatchers: matchers))
	    }
	    
	    func child<M1: Cuckoo.Matchable>(_ path: M1) -> Cuckoo.ProtocolStubFunction<(Path), Optional<DataReferenceable>> where M1.MatchedType == Path {
	        let matchers: [Cuckoo.ParameterMatcher<(Path)>] = [wrap(matchable: path) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockDataReferenceable.self, method: "child(_: Path) -> DataReferenceable?", parameterMatchers: matchers))
	    }
	    
	    func observe<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(eventType: M1, with snapshot: M2, withCancel cancel: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(DataEventType, (DataSnapshot) -> Void, (Error) -> Void)> where M1.MatchedType == DataEventType, M2.MatchedType == (DataSnapshot) -> Void, M3.MatchedType == (Error) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(DataEventType, (DataSnapshot) -> Void, (Error) -> Void)>] = [wrap(matchable: eventType) { $0.0 }, wrap(matchable: snapshot) { $0.1 }, wrap(matchable: cancel) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockDataReferenceable.self, method: "observe(eventType: DataEventType, with: @escaping (DataSnapshot) -> Void, withCancel: @escaping (Error) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_DataReferenceable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func databaseReference() -> Cuckoo.__DoNotUse<Optional<DataReferenceable>> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("databaseReference() -> DataReferenceable?", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func child<M1: Cuckoo.Matchable>(_ path: M1) -> Cuckoo.__DoNotUse<Optional<DataReferenceable>> where M1.MatchedType == Path {
	        let matchers: [Cuckoo.ParameterMatcher<(Path)>] = [wrap(matchable: path) { $0 }]
	        return cuckoo_manager.verify("child(_: Path) -> DataReferenceable?", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func observe<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(eventType: M1, with snapshot: M2, withCancel cancel: M3) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == DataEventType, M2.MatchedType == (DataSnapshot) -> Void, M3.MatchedType == (Error) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(DataEventType, (DataSnapshot) -> Void, (Error) -> Void)>] = [wrap(matchable: eventType) { $0.0 }, wrap(matchable: snapshot) { $0.1 }, wrap(matchable: cancel) { $0.2 }]
	        return cuckoo_manager.verify("observe(eventType: DataEventType, with: @escaping (DataSnapshot) -> Void, withCancel: @escaping (Error) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class DataReferenceableStub: DataReferenceable {
    

    

    
     func databaseReference()  -> DataReferenceable? {
        return DefaultValueRegistry.defaultValue(for: Optional<DataReferenceable>.self)
    }
    
     func child(_ path: Path)  -> DataReferenceable? {
        return DefaultValueRegistry.defaultValue(for: Optional<DataReferenceable>.self)
    }
    
     func observe(eventType: DataEventType, with snapshot: @escaping (DataSnapshot) -> Void, withCancel cancel: @escaping (Error) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Login/Interactor/LoginPresenterInteractable.swift at 2018-05-03 11:41:08 +0000

//
//  PresenterInteractable.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/04/20.
//  Copyright © 2018 DVT. All rights reserved.
//

import Cuckoo
@testable import Showcase_iOS

import Foundation

class MockLoginPresenterInteractable: LoginPresenterInteractable, Cuckoo.ProtocolMock {
    typealias MocksType = LoginPresenterInteractable
    typealias Stubbing = __StubbingProxy_LoginPresenterInteractable
    typealias Verification = __VerificationProxy_LoginPresenterInteractable
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "signIn", "returnSignature": "", "fullyQualifiedName": "signIn(withEmail: String, password: String)", "parameterSignature": "withEmail email: String, password: String", "parameterSignatureWithoutNames": "email: String, password: String", "inputTypes": "String, String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "email, password", "call": "withEmail: email, password: password", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("withEmail"), name: "email", type: "String", range: CountableRange(229..<252), nameRange: CountableRange(229..<238)), CuckooGeneratorFramework.MethodParameter(label: Optional("password"), name: "password", type: "String", range: CountableRange(254..<270), nameRange: CountableRange(254..<262))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func signIn(withEmail email: String, password: String)  {
        
            return cuckoo_manager.call("signIn(withEmail: String, password: String)",
                parameters: (email, password),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_LoginPresenterInteractable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func signIn<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(withEmail email: M1, password: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(String, String)> where M1.MatchedType == String, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String)>] = [wrap(matchable: email) { $0.0 }, wrap(matchable: password) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockLoginPresenterInteractable.self, method: "signIn(withEmail: String, password: String)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_LoginPresenterInteractable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func signIn<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(withEmail email: M1, password: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String)>] = [wrap(matchable: email) { $0.0 }, wrap(matchable: password) { $0.1 }]
	        return cuckoo_manager.verify("signIn(withEmail: String, password: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class LoginPresenterInteractableStub: LoginPresenterInteractable {
    

    

    
     func signIn(withEmail email: String, password: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Login/Presenter/LoginInteractorPresentable.swift at 2018-05-03 11:41:08 +0000

//
//  InteractorPresentable.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/04/20.
//  Copyright © 2018 DVT. All rights reserved.
//

import Cuckoo
@testable import Showcase_iOS

import Foundation

class MockLoginInteractorPresentable: LoginInteractorPresentable, Cuckoo.ProtocolMock {
    typealias MocksType = LoginInteractorPresentable
    typealias Stubbing = __StubbingProxy_LoginInteractorPresentable
    typealias Verification = __VerificationProxy_LoginInteractorPresentable
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "signedInSuccessfully", "returnSignature": "", "fullyQualifiedName": "signedInSuccessfully()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func signedInSuccessfully()  {
        
            return cuckoo_manager.call("signedInSuccessfully()",
                parameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "failedToSign", "returnSignature": "", "fullyQualifiedName": "failedToSign(withError: Error)", "parameterSignature": "withError error: Error", "parameterSignatureWithoutNames": "error: Error", "inputTypes": "Error", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "error", "call": "withError: error", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("withError"), name: "error", type: "Error", range: CountableRange(266..<288), nameRange: CountableRange(266..<275))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func failedToSign(withError error: Error)  {
        
            return cuckoo_manager.call("failedToSign(withError: Error)",
                parameters: (error),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_LoginInteractorPresentable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func signedInSuccessfully() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockLoginInteractorPresentable.self, method: "signedInSuccessfully()", parameterMatchers: matchers))
	    }
	    
	    func failedToSign<M1: Cuckoo.Matchable>(withError error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockLoginInteractorPresentable.self, method: "failedToSign(withError: Error)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_LoginInteractorPresentable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func signedInSuccessfully() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("signedInSuccessfully()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func failedToSign<M1: Cuckoo.Matchable>(withError error: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("failedToSign(withError: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class LoginInteractorPresentableStub: LoginInteractorPresentable {
    

    

    
     func signedInSuccessfully()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func failedToSign(withError error: Error)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Login/Service/FirebaseLoginAuthenticating.swift at 2018-05-03 11:41:08 +0000

//
//  FirebaseAuthenticating.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/04/20.
//  Copyright © 2018 DVT. All rights reserved.
//

import Cuckoo
@testable import Showcase_iOS

import Foundation

class MockFirebaseLoginAuthenticating: FirebaseLoginAuthenticating, Cuckoo.ProtocolMock {
    typealias MocksType = FirebaseLoginAuthenticating
    typealias Stubbing = __StubbingProxy_FirebaseLoginAuthenticating
    typealias Verification = __VerificationProxy_FirebaseLoginAuthenticating
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "signIn", "returnSignature": "", "fullyQualifiedName": "signIn(withEmail: String, password: String, completion: @escaping (FirUserProtocol?, Error?) -> Void)", "parameterSignature": "withEmail email: String, password: String, completion: @escaping (FirUserProtocol?, Error?) -> Void", "parameterSignatureWithoutNames": "email: String, password: String, completion: @escaping (FirUserProtocol?, Error?) -> Void", "inputTypes": "String, String, (FirUserProtocol?, Error?) -> Void", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": true, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "email, password, completion", "call": "withEmail: email, password: password, completion: completion", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("withEmail"), name: "email", type: "String", range: CountableRange(230..<253), nameRange: CountableRange(230..<239)), CuckooGeneratorFramework.MethodParameter(label: Optional("password"), name: "password", type: "String", range: CountableRange(255..<271), nameRange: CountableRange(255..<263)), CuckooGeneratorFramework.MethodParameter(label: Optional("completion"), name: "completion", type: "@escaping (FirUserProtocol?, Error?) -> Void", range: CountableRange(273..<329), nameRange: CountableRange(273..<283))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func signIn(withEmail email: String, password: String, completion: @escaping (FirUserProtocol?, Error?) -> Void)  {
        
            return cuckoo_manager.call("signIn(withEmail: String, password: String, completion: @escaping (FirUserProtocol?, Error?) -> Void)",
                parameters: (email, password, completion),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_FirebaseLoginAuthenticating: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func signIn<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(withEmail email: M1, password: M2, completion: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(String, String, (FirUserProtocol?, Error?) -> Void)> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == (FirUserProtocol?, Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String, (FirUserProtocol?, Error?) -> Void)>] = [wrap(matchable: email) { $0.0 }, wrap(matchable: password) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockFirebaseLoginAuthenticating.self, method: "signIn(withEmail: String, password: String, completion: @escaping (FirUserProtocol?, Error?) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_FirebaseLoginAuthenticating: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func signIn<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(withEmail email: M1, password: M2, completion: M3) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == (FirUserProtocol?, Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String, (FirUserProtocol?, Error?) -> Void)>] = [wrap(matchable: email) { $0.0 }, wrap(matchable: password) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return cuckoo_manager.verify("signIn(withEmail: String, password: String, completion: @escaping (FirUserProtocol?, Error?) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class FirebaseLoginAuthenticatingStub: FirebaseLoginAuthenticating {
    

    

    
     func signIn(withEmail email: String, password: String, completion: @escaping (FirUserProtocol?, Error?) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Login/Service/LoginAuthenticating.swift at 2018-05-03 11:41:08 +0000

//
//  Authenticating.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/04/20.
//  Copyright © 2018 DVT. All rights reserved.
//

import Cuckoo
@testable import Showcase_iOS

import Foundation

class MockLoginAuthenticating: LoginAuthenticating, Cuckoo.ProtocolMock {
    typealias MocksType = LoginAuthenticating
    typealias Stubbing = __StubbingProxy_LoginAuthenticating
    typealias Verification = __VerificationProxy_LoginAuthenticating
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "signIn", "returnSignature": "", "fullyQualifiedName": "signIn(withEmail: String, password: String, completion: @escaping (FirUserProtocol?, Error?) -> Void)", "parameterSignature": "withEmail email: String, password: String, completion: @escaping (FirUserProtocol?, Error?) -> Void", "parameterSignatureWithoutNames": "email: String, password: String, completion: @escaping (FirUserProtocol?, Error?) -> Void", "inputTypes": "String, String, (FirUserProtocol?, Error?) -> Void", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": true, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "email, password, completion", "call": "withEmail: email, password: password, completion: completion", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("withEmail"), name: "email", type: "String", range: CountableRange(214..<237), nameRange: CountableRange(214..<223)), CuckooGeneratorFramework.MethodParameter(label: Optional("password"), name: "password", type: "String", range: CountableRange(239..<255), nameRange: CountableRange(239..<247)), CuckooGeneratorFramework.MethodParameter(label: Optional("completion"), name: "completion", type: "@escaping (FirUserProtocol?, Error?) -> Void", range: CountableRange(257..<313), nameRange: CountableRange(257..<267))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func signIn(withEmail email: String, password: String, completion: @escaping (FirUserProtocol?, Error?) -> Void)  {
        
            return cuckoo_manager.call("signIn(withEmail: String, password: String, completion: @escaping (FirUserProtocol?, Error?) -> Void)",
                parameters: (email, password, completion),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_LoginAuthenticating: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func signIn<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(withEmail email: M1, password: M2, completion: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(String, String, (FirUserProtocol?, Error?) -> Void)> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == (FirUserProtocol?, Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String, (FirUserProtocol?, Error?) -> Void)>] = [wrap(matchable: email) { $0.0 }, wrap(matchable: password) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockLoginAuthenticating.self, method: "signIn(withEmail: String, password: String, completion: @escaping (FirUserProtocol?, Error?) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_LoginAuthenticating: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func signIn<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(withEmail email: M1, password: M2, completion: M3) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == (FirUserProtocol?, Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String, (FirUserProtocol?, Error?) -> Void)>] = [wrap(matchable: email) { $0.0 }, wrap(matchable: password) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return cuckoo_manager.verify("signIn(withEmail: String, password: String, completion: @escaping (FirUserProtocol?, Error?) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class LoginAuthenticatingStub: LoginAuthenticating {
    

    

    
     func signIn(withEmail email: String, password: String, completion: @escaping (FirUserProtocol?, Error?) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Login/View/LoginPresenterViewable.swift at 2018-05-03 11:41:08 +0000

//
//  PresenterViewable.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/04/24.
//  Copyright © 2018 DVT. All rights reserved.
//

import Cuckoo
@testable import Showcase_iOS

import Foundation

class MockLoginPresenterViewable: LoginPresenterViewable, Cuckoo.ProtocolMock {
    typealias MocksType = LoginPresenterViewable
    typealias Stubbing = __StubbingProxy_LoginPresenterViewable
    typealias Verification = __VerificationProxy_LoginPresenterViewable
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "showEmailValidationFailure", "returnSignature": "", "fullyQualifiedName": "showEmailValidationFailure(withError: AuthenticationError)", "parameterSignature": "withError error: AuthenticationError", "parameterSignatureWithoutNames": "error: AuthenticationError", "inputTypes": "AuthenticationError", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "error", "call": "withError: error", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("withError"), name: "error", type: "AuthenticationError", range: CountableRange(240..<276), nameRange: CountableRange(240..<249))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func showEmailValidationFailure(withError error: AuthenticationError)  {
        
            return cuckoo_manager.call("showEmailValidationFailure(withError: AuthenticationError)",
                parameters: (error),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "showPasswordValidationFailure", "returnSignature": "", "fullyQualifiedName": "showPasswordValidationFailure(withError: AuthenticationError)", "parameterSignature": "withError error: AuthenticationError", "parameterSignatureWithoutNames": "error: AuthenticationError", "inputTypes": "AuthenticationError", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "error", "call": "withError: error", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("withError"), name: "error", type: "AuthenticationError", range: CountableRange(317..<353), nameRange: CountableRange(317..<326))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func showPasswordValidationFailure(withError error: AuthenticationError)  {
        
            return cuckoo_manager.call("showPasswordValidationFailure(withError: AuthenticationError)",
                parameters: (error),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "showInvalidInputsFailure", "returnSignature": "", "fullyQualifiedName": "showInvalidInputsFailure(withError: AuthenticationError)", "parameterSignature": "withError error: AuthenticationError", "parameterSignatureWithoutNames": "error: AuthenticationError", "inputTypes": "AuthenticationError", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "error", "call": "withError: error", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("withError"), name: "error", type: "AuthenticationError", range: CountableRange(389..<425), nameRange: CountableRange(389..<398))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func showInvalidInputsFailure(withError error: AuthenticationError)  {
        
            return cuckoo_manager.call("showInvalidInputsFailure(withError: AuthenticationError)",
                parameters: (error),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "showAuthenticationFailure", "returnSignature": "", "fullyQualifiedName": "showAuthenticationFailure(withMessage: String?)", "parameterSignature": "withMessage: String?", "parameterSignatureWithoutNames": "withMessage: String?", "inputTypes": "String?", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "withMessage", "call": "withMessage: withMessage", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("withMessage"), name: "withMessage", type: "String?", range: CountableRange(462..<482), nameRange: CountableRange(462..<473))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func showAuthenticationFailure(withMessage: String?)  {
        
            return cuckoo_manager.call("showAuthenticationFailure(withMessage: String?)",
                parameters: (withMessage),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "showSuccess", "returnSignature": "", "fullyQualifiedName": "showSuccess()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func showSuccess()  {
        
            return cuckoo_manager.call("showSuccess()",
                parameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_LoginPresenterViewable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func showEmailValidationFailure<M1: Cuckoo.Matchable>(withError error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(AuthenticationError)> where M1.MatchedType == AuthenticationError {
	        let matchers: [Cuckoo.ParameterMatcher<(AuthenticationError)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockLoginPresenterViewable.self, method: "showEmailValidationFailure(withError: AuthenticationError)", parameterMatchers: matchers))
	    }
	    
	    func showPasswordValidationFailure<M1: Cuckoo.Matchable>(withError error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(AuthenticationError)> where M1.MatchedType == AuthenticationError {
	        let matchers: [Cuckoo.ParameterMatcher<(AuthenticationError)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockLoginPresenterViewable.self, method: "showPasswordValidationFailure(withError: AuthenticationError)", parameterMatchers: matchers))
	    }
	    
	    func showInvalidInputsFailure<M1: Cuckoo.Matchable>(withError error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(AuthenticationError)> where M1.MatchedType == AuthenticationError {
	        let matchers: [Cuckoo.ParameterMatcher<(AuthenticationError)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockLoginPresenterViewable.self, method: "showInvalidInputsFailure(withError: AuthenticationError)", parameterMatchers: matchers))
	    }
	    
	    func showAuthenticationFailure<M1: Cuckoo.Matchable>(withMessage: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String?)> where M1.MatchedType == String? {
	        let matchers: [Cuckoo.ParameterMatcher<(String?)>] = [wrap(matchable: withMessage) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockLoginPresenterViewable.self, method: "showAuthenticationFailure(withMessage: String?)", parameterMatchers: matchers))
	    }
	    
	    func showSuccess() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockLoginPresenterViewable.self, method: "showSuccess()", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_LoginPresenterViewable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func showEmailValidationFailure<M1: Cuckoo.Matchable>(withError error: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == AuthenticationError {
	        let matchers: [Cuckoo.ParameterMatcher<(AuthenticationError)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("showEmailValidationFailure(withError: AuthenticationError)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showPasswordValidationFailure<M1: Cuckoo.Matchable>(withError error: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == AuthenticationError {
	        let matchers: [Cuckoo.ParameterMatcher<(AuthenticationError)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("showPasswordValidationFailure(withError: AuthenticationError)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showInvalidInputsFailure<M1: Cuckoo.Matchable>(withError error: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == AuthenticationError {
	        let matchers: [Cuckoo.ParameterMatcher<(AuthenticationError)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("showInvalidInputsFailure(withError: AuthenticationError)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showAuthenticationFailure<M1: Cuckoo.Matchable>(withMessage: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String? {
	        let matchers: [Cuckoo.ParameterMatcher<(String?)>] = [wrap(matchable: withMessage) { $0 }]
	        return cuckoo_manager.verify("showAuthenticationFailure(withMessage: String?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showSuccess() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("showSuccess()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class LoginPresenterViewableStub: LoginPresenterViewable {
    

    

    
     func showEmailValidationFailure(withError error: AuthenticationError)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func showPasswordValidationFailure(withError error: AuthenticationError)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func showInvalidInputsFailure(withError error: AuthenticationError)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func showAuthenticationFailure(withMessage: String?)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func showSuccess()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Viewable.swift at 2018-05-03 11:41:08 +0000

//
//  Viewable.swift
//  Showcase-iOS
//
//  Created by pjapple on 2018/04/17.
//  Copyright © 2018 DVT. All rights reserved.
//

import Cuckoo
@testable import Showcase_iOS

import Foundation

class MockViewable: Viewable, Cuckoo.ProtocolMock {
    typealias MocksType = Viewable
    typealias Stubbing = __StubbingProxy_Viewable
    typealias Verification = __VerificationProxy_Viewable
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    

	struct __StubbingProxy_Viewable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	}

	struct __VerificationProxy_Viewable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	}

}

 class ViewableStub: Viewable {
    

    

    
}

