// MARK: - Mocks generated from file: Showcase-iOS/Contact Us/Interactor/ContactUsInteractable.swift at 2018-05-23 10:40:43 +0000


import Cuckoo
@testable import Showcase_iOS

import Foundation

class MockContactUsInteractable: ContactUsInteractable, Cuckoo.ProtocolMock {
    typealias MocksType = ContactUsInteractable
    typealias Stubbing = __StubbingProxy_ContactUsInteractable
    typealias Verification = __VerificationProxy_ContactUsInteractable
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
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
	
	    
	
	    
	    @discardableResult
	    func retrieveContacts() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("retrieveContacts()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class ContactUsInteractableStub: ContactUsInteractable {
    

    

    
     func retrieveContacts()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Contact Us/Presenter/ContactUsPresentable.swift at 2018-05-23 10:40:43 +0000


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
    
    // ["name": "retrieveContacts", "returnSignature": "", "fullyQualifiedName": "retrieveContacts()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func retrieveContacts()  {
        
            return cuckoo_manager.call("retrieveContacts()",
                parameters: (),
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
	    
	    func retrieveContacts() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockContactUsPresentable.self, method: "retrieveContacts()", parameterMatchers: matchers))
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
	    
	    @discardableResult
	    func retrieveContacts() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("retrieveContacts()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
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
    
     func retrieveContacts()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Contact Us/View/ContactUsPresenterViewable.swift at 2018-05-23 10:40:43 +0000


import Cuckoo
@testable import Showcase_iOS

import Foundation

class MockContactUsPresenterViewable: ContactUsPresenterViewable, Cuckoo.ProtocolMock {
    typealias MocksType = ContactUsPresenterViewable
    typealias Stubbing = __StubbingProxy_ContactUsPresenterViewable
    typealias Verification = __VerificationProxy_ContactUsPresenterViewable
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "showOnSuccess", "returnSignature": "", "fullyQualifiedName": "showOnSuccess(with: [OfficeViewModel])", "parameterSignature": "with officeViewModels: [OfficeViewModel]", "parameterSignatureWithoutNames": "officeViewModels: [OfficeViewModel]", "inputTypes": "[OfficeViewModel]", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "officeViewModels", "call": "with: officeViewModels", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("with"), name: "officeViewModels", type: "[OfficeViewModel]", range: CountableRange(81..<121), nameRange: CountableRange(81..<85))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func showOnSuccess(with officeViewModels: [OfficeViewModel])  {
        
            return cuckoo_manager.call("showOnSuccess(with: [OfficeViewModel])",
                parameters: (officeViewModels),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "showOnFailure", "returnSignature": "", "fullyQualifiedName": "showOnFailure(with: Error)", "parameterSignature": "with error: Error", "parameterSignatureWithoutNames": "error: Error", "inputTypes": "Error", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "error", "call": "with: error", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("with"), name: "error", type: "Error", range: CountableRange(146..<163), nameRange: CountableRange(146..<150))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func showOnFailure(with error: Error)  {
        
            return cuckoo_manager.call("showOnFailure(with: Error)",
                parameters: (error),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_ContactUsPresenterViewable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func showOnSuccess<M1: Cuckoo.Matchable>(with officeViewModels: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([OfficeViewModel])> where M1.MatchedType == [OfficeViewModel] {
	        let matchers: [Cuckoo.ParameterMatcher<([OfficeViewModel])>] = [wrap(matchable: officeViewModels) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockContactUsPresenterViewable.self, method: "showOnSuccess(with: [OfficeViewModel])", parameterMatchers: matchers))
	    }
	    
	    func showOnFailure<M1: Cuckoo.Matchable>(with error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockContactUsPresenterViewable.self, method: "showOnFailure(with: Error)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_ContactUsPresenterViewable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func showOnSuccess<M1: Cuckoo.Matchable>(with officeViewModels: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == [OfficeViewModel] {
	        let matchers: [Cuckoo.ParameterMatcher<([OfficeViewModel])>] = [wrap(matchable: officeViewModels) { $0 }]
	        return cuckoo_manager.verify("showOnSuccess(with: [OfficeViewModel])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showOnFailure<M1: Cuckoo.Matchable>(with error: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("showOnFailure(with: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class ContactUsPresenterViewableStub: ContactUsPresenterViewable {
    

    

    
     func showOnSuccess(with officeViewModels: [OfficeViewModel])  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func showOnFailure(with error: Error)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Contact Us/ViewHelpers/ContactUsDelegate.swift at 2018-05-23 10:40:43 +0000


import Cuckoo
@testable import Showcase_iOS

import Foundation

class MockContactUsDelegate: ContactUsDelegate, Cuckoo.ProtocolMock {
    typealias MocksType = ContactUsDelegate
    typealias Stubbing = __StubbingProxy_ContactUsDelegate
    typealias Verification = __VerificationProxy_ContactUsDelegate
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "call", "returnSignature": "", "fullyQualifiedName": "call()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func call()  {
        
            return cuckoo_manager.call("call()",
                parameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "email", "returnSignature": "", "fullyQualifiedName": "email()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func email()  {
        
            return cuckoo_manager.call("email()",
                parameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_ContactUsDelegate: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func call() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockContactUsDelegate.self, method: "call()", parameterMatchers: matchers))
	    }
	    
	    func email() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockContactUsDelegate.self, method: "email()", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_ContactUsDelegate: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func call() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("call()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func email() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("email()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class ContactUsDelegateStub: ContactUsDelegate {
    

    

    
     func call()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func email()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Contact Us/ViewHelpers/ContactUsNavigatorDelegate.swift at 2018-05-23 10:40:43 +0000


import Cuckoo
@testable import Showcase_iOS

import Foundation
import UIKit

class MockContactUsNavigatorDelegate: ContactUsNavigatorDelegate, Cuckoo.ProtocolMock {
    typealias MocksType = ContactUsNavigatorDelegate
    typealias Stubbing = __StubbingProxy_ContactUsNavigatorDelegate
    typealias Verification = __VerificationProxy_ContactUsNavigatorDelegate
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "navigate", "returnSignature": "", "fullyQualifiedName": "navigate(with: Double, longitude: Double, branch: String)", "parameterSignature": "with latitude: Double, longitude: Double, branch: String", "parameterSignatureWithoutNames": "latitude: Double, longitude: Double, branch: String", "inputTypes": "Double, Double, String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "latitude, longitude, branch", "call": "with: latitude, longitude: longitude, branch: branch", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("with"), name: "latitude", type: "Double", range: CountableRange(90..<111), nameRange: CountableRange(90..<94)), CuckooGeneratorFramework.MethodParameter(label: Optional("longitude"), name: "longitude", type: "Double", range: CountableRange(113..<130), nameRange: CountableRange(113..<122)), CuckooGeneratorFramework.MethodParameter(label: Optional("branch"), name: "branch", type: "String", range: CountableRange(132..<146), nameRange: CountableRange(132..<138))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func navigate(with latitude: Double, longitude: Double, branch: String)  {
        
            return cuckoo_manager.call("navigate(with: Double, longitude: Double, branch: String)",
                parameters: (latitude, longitude, branch),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_ContactUsNavigatorDelegate: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func navigate<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(with latitude: M1, longitude: M2, branch: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(Double, Double, String)> where M1.MatchedType == Double, M2.MatchedType == Double, M3.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(Double, Double, String)>] = [wrap(matchable: latitude) { $0.0 }, wrap(matchable: longitude) { $0.1 }, wrap(matchable: branch) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockContactUsNavigatorDelegate.self, method: "navigate(with: Double, longitude: Double, branch: String)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_ContactUsNavigatorDelegate: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func navigate<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(with latitude: M1, longitude: M2, branch: M3) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Double, M2.MatchedType == Double, M3.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(Double, Double, String)>] = [wrap(matchable: latitude) { $0.0 }, wrap(matchable: longitude) { $0.1 }, wrap(matchable: branch) { $0.2 }]
	        return cuckoo_manager.verify("navigate(with: Double, longitude: Double, branch: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class ContactUsNavigatorDelegateStub: ContactUsNavigatorDelegate {
    

    

    
     func navigate(with latitude: Double, longitude: Double, branch: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Contact Us/ViewHelpers/SharedApplicationDelegate.swift at 2018-05-23 10:40:43 +0000


import Cuckoo
@testable import Showcase_iOS

import Foundation

class MockSharedApplicationDelegate: SharedApplicationDelegate, Cuckoo.ProtocolMock {
    typealias MocksType = SharedApplicationDelegate
    typealias Stubbing = __StubbingProxy_SharedApplicationDelegate
    typealias Verification = __VerificationProxy_SharedApplicationDelegate
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "openSharedApplication", "returnSignature": "", "fullyQualifiedName": "openSharedApplication(with: URL)", "parameterSignature": "with url: URL", "parameterSignatureWithoutNames": "url: URL", "inputTypes": "URL", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "url", "call": "with: url", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("with"), name: "url", type: "URL", range: CountableRange(89..<102), nameRange: CountableRange(89..<93))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func openSharedApplication(with url: URL)  {
        
            return cuckoo_manager.call("openSharedApplication(with: URL)",
                parameters: (url),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_SharedApplicationDelegate: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func openSharedApplication<M1: Cuckoo.Matchable>(with url: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(URL)> where M1.MatchedType == URL {
	        let matchers: [Cuckoo.ParameterMatcher<(URL)>] = [wrap(matchable: url) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSharedApplicationDelegate.self, method: "openSharedApplication(with: URL)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_SharedApplicationDelegate: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func openSharedApplication<M1: Cuckoo.Matchable>(with url: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == URL {
	        let matchers: [Cuckoo.ParameterMatcher<(URL)>] = [wrap(matchable: url) { $0 }]
	        return cuckoo_manager.verify("openSharedApplication(with: URL)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class SharedApplicationDelegateStub: SharedApplicationDelegate {
    

    

    
     func openSharedApplication(with url: URL)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Dashboard/Interactor/HomePresenterInteractable.swift at 2018-05-23 10:40:43 +0000

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


// MARK: - Mocks generated from file: Showcase-iOS/Dashboard/Presenter/HomePresentable.swift at 2018-05-23 10:40:43 +0000

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
    
    // ["name": "fetchShowcaseApps", "returnSignature": "", "fullyQualifiedName": "fetchShowcaseApps()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func fetchShowcaseApps()  {
        
            return cuckoo_manager.call("fetchShowcaseApps()",
                parameters: (),
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
	    
	    func fetchShowcaseApps() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockHomePresentable.self, method: "fetchShowcaseApps()", parameterMatchers: matchers))
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
	    
	    @discardableResult
	    func fetchShowcaseApps() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("fetchShowcaseApps()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
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
    
     func fetchShowcaseApps()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Dashboard/View/HomePresenterViewable.swift at 2018-05-23 10:40:43 +0000

//
//  HomePresenterViewable.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/03.
//  Copyright © 2018 DVT. All rights reserved.
//

import Cuckoo
@testable import Showcase_iOS

import Foundation

class MockHomePresenterViewable: HomePresenterViewable, Cuckoo.ProtocolMock {
    typealias MocksType = HomePresenterViewable
    typealias Stubbing = __StubbingProxy_HomePresenterViewable
    typealias Verification = __VerificationProxy_HomePresenterViewable
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "showOnSuccess", "returnSignature": "", "fullyQualifiedName": "showOnSuccess(with: [ShowcaseAppViewModel])", "parameterSignature": "with showcaseApps: [ShowcaseAppViewModel]", "parameterSignatureWithoutNames": "showcaseApps: [ShowcaseAppViewModel]", "inputTypes": "[ShowcaseAppViewModel]", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "showcaseApps", "call": "with: showcaseApps", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("with"), name: "showcaseApps", type: "[ShowcaseAppViewModel]", range: CountableRange(228..<269), nameRange: CountableRange(228..<232))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func showOnSuccess(with showcaseApps: [ShowcaseAppViewModel])  {
        
            return cuckoo_manager.call("showOnSuccess(with: [ShowcaseAppViewModel])",
                parameters: (showcaseApps),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "showOnFailure", "returnSignature": "", "fullyQualifiedName": "showOnFailure(with: DatabaseError)", "parameterSignature": "with error: DatabaseError", "parameterSignatureWithoutNames": "error: DatabaseError", "inputTypes": "DatabaseError", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "error", "call": "with: error", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("with"), name: "error", type: "DatabaseError", range: CountableRange(294..<319), nameRange: CountableRange(294..<298))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func showOnFailure(with error: DatabaseError)  {
        
            return cuckoo_manager.call("showOnFailure(with: DatabaseError)",
                parameters: (error),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_HomePresenterViewable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func showOnSuccess<M1: Cuckoo.Matchable>(with showcaseApps: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([ShowcaseAppViewModel])> where M1.MatchedType == [ShowcaseAppViewModel] {
	        let matchers: [Cuckoo.ParameterMatcher<([ShowcaseAppViewModel])>] = [wrap(matchable: showcaseApps) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockHomePresenterViewable.self, method: "showOnSuccess(with: [ShowcaseAppViewModel])", parameterMatchers: matchers))
	    }
	    
	    func showOnFailure<M1: Cuckoo.Matchable>(with error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(DatabaseError)> where M1.MatchedType == DatabaseError {
	        let matchers: [Cuckoo.ParameterMatcher<(DatabaseError)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockHomePresenterViewable.self, method: "showOnFailure(with: DatabaseError)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_HomePresenterViewable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func showOnSuccess<M1: Cuckoo.Matchable>(with showcaseApps: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == [ShowcaseAppViewModel] {
	        let matchers: [Cuckoo.ParameterMatcher<([ShowcaseAppViewModel])>] = [wrap(matchable: showcaseApps) { $0 }]
	        return cuckoo_manager.verify("showOnSuccess(with: [ShowcaseAppViewModel])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showOnFailure<M1: Cuckoo.Matchable>(with error: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == DatabaseError {
	        let matchers: [Cuckoo.ParameterMatcher<(DatabaseError)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("showOnFailure(with: DatabaseError)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class HomePresenterViewableStub: HomePresenterViewable {
    

    

    
     func showOnSuccess(with showcaseApps: [ShowcaseAppViewModel])  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func showOnFailure(with error: DatabaseError)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Firebase/Service/DataReferenceable.swift at 2018-05-23 10:40:43 +0000


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
    
    // ["name": "observe", "returnSignature": "", "fullyQualifiedName": "observe(eventType: DataEventType, with: @escaping (DataSnapshotProtocol) -> Void, withCancel: @escaping (Error) -> Void)", "parameterSignature": "eventType: DataEventType, with snapshot: @escaping (DataSnapshotProtocol) -> Void, withCancel cancel: @escaping (Error) -> Void", "parameterSignatureWithoutNames": "eventType: DataEventType, snapshot: @escaping (DataSnapshotProtocol) -> Void, cancel: @escaping (Error) -> Void", "inputTypes": "DataEventType, (DataSnapshotProtocol) -> Void, (Error) -> Void", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": true, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "eventType, snapshot, cancel", "call": "eventType: eventType, with: snapshot, withCancel: cancel", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("eventType"), name: "eventType", type: "DataEventType", range: CountableRange(209..<233), nameRange: CountableRange(209..<218)), CuckooGeneratorFramework.MethodParameter(label: Optional("with"), name: "snapshot", type: "@escaping (DataSnapshotProtocol) -> Void", range: CountableRange(235..<290), nameRange: CountableRange(235..<239)), CuckooGeneratorFramework.MethodParameter(label: Optional("withCancel"), name: "cancel", type: "@escaping (Error) -> Void", range: CountableRange(292..<336), nameRange: CountableRange(292..<302))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func observe(eventType: DataEventType, with snapshot: @escaping (DataSnapshotProtocol) -> Void, withCancel cancel: @escaping (Error) -> Void)  {
        
            return cuckoo_manager.call("observe(eventType: DataEventType, with: @escaping (DataSnapshotProtocol) -> Void, withCancel: @escaping (Error) -> Void)",
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
	    
	    func observe<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(eventType: M1, with snapshot: M2, withCancel cancel: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(DataEventType, (DataSnapshotProtocol) -> Void, (Error) -> Void)> where M1.MatchedType == DataEventType, M2.MatchedType == (DataSnapshotProtocol) -> Void, M3.MatchedType == (Error) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(DataEventType, (DataSnapshotProtocol) -> Void, (Error) -> Void)>] = [wrap(matchable: eventType) { $0.0 }, wrap(matchable: snapshot) { $0.1 }, wrap(matchable: cancel) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockDataReferenceable.self, method: "observe(eventType: DataEventType, with: @escaping (DataSnapshotProtocol) -> Void, withCancel: @escaping (Error) -> Void)", parameterMatchers: matchers))
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
	    func observe<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(eventType: M1, with snapshot: M2, withCancel cancel: M3) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == DataEventType, M2.MatchedType == (DataSnapshotProtocol) -> Void, M3.MatchedType == (Error) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(DataEventType, (DataSnapshotProtocol) -> Void, (Error) -> Void)>] = [wrap(matchable: eventType) { $0.0 }, wrap(matchable: snapshot) { $0.1 }, wrap(matchable: cancel) { $0.2 }]
	        return cuckoo_manager.verify("observe(eventType: DataEventType, with: @escaping (DataSnapshotProtocol) -> Void, withCancel: @escaping (Error) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
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
    
     func observe(eventType: DataEventType, with snapshot: @escaping (DataSnapshotProtocol) -> Void, withCancel cancel: @escaping (Error) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Firebase/Service/DataSnapshotProtocol.swift at 2018-05-23 10:40:43 +0000

//
//  DataSnapshotProtocol.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/21.
//  Copyright © 2018 DVT. All rights reserved.
//

import Cuckoo
@testable import Showcase_iOS

import FirebaseDatabase
import Foundation

class MockDataSnapshotProtocol: DataSnapshotProtocol, Cuckoo.ProtocolMock {
    typealias MocksType = DataSnapshotProtocol
    typealias Stubbing = __StubbingProxy_DataSnapshotProtocol
    typealias Verification = __VerificationProxy_DataSnapshotProtocol
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    
    // ["name": "value", "stubType": "ProtocolToBeStubbedReadOnlyProperty", "@type": "InstanceVariable", "type": "Any?", "isReadOnly": true, "accessibility": ""]
     var value: Any? {
        get {
            
            return cuckoo_manager.getter("value", superclassCall: Cuckoo.MockManager.crashOnProtocolSuperclassCall())
            
        }
        
    }
    

    

    

	struct __StubbingProxy_DataSnapshotProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    var value: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockDataSnapshotProtocol, Any?> {
	        return .init(manager: cuckoo_manager, name: "value")
	    }
	    
	    
	}

	struct __VerificationProxy_DataSnapshotProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    var value: Cuckoo.VerifyReadOnlyProperty<Any?> {
	        return .init(manager: cuckoo_manager, name: "value", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}

}

 class DataSnapshotProtocolStub: DataSnapshotProtocol {
    
     var value: Any? {
        get {
            return DefaultValueRegistry.defaultValue(for: (Any?).self)
        }
        
    }
    

    

    
}


// MARK: - Mocks generated from file: Showcase-iOS/Firebase/Storage/FIRStoring.swift at 2018-05-23 10:40:43 +0000


import Cuckoo
@testable import Showcase_iOS

import FirebaseStorage
import Foundation

class MockFIRStoring: FIRStoring, Cuckoo.ProtocolMock {
    typealias MocksType = FIRStoring
    typealias Stubbing = __StubbingProxy_FIRStoring
    typealias Verification = __VerificationProxy_FIRStoring
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "storageReference", "returnSignature": " -> StorageReferenceable?", "fullyQualifiedName": "storageReference() -> StorageReferenceable?", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Optional<StorageReferenceable>", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubFunction"]
     func storageReference()  -> StorageReferenceable? {
        
            return cuckoo_manager.call("storageReference() -> StorageReferenceable?",
                parameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_FIRStoring: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func storageReference() -> Cuckoo.ProtocolStubFunction<(), Optional<StorageReferenceable>> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockFIRStoring.self, method: "storageReference() -> StorageReferenceable?", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_FIRStoring: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func storageReference() -> Cuckoo.__DoNotUse<Optional<StorageReferenceable>> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("storageReference() -> StorageReferenceable?", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class FIRStoringStub: FIRStoring {
    

    

    
     func storageReference()  -> StorageReferenceable? {
        return DefaultValueRegistry.defaultValue(for: Optional<StorageReferenceable>.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Firebase/Storage/StorageReferenceable.swift at 2018-05-23 10:40:43 +0000


import Cuckoo
@testable import Showcase_iOS

import FirebaseStorage
import Foundation

class MockStorageReferenceable: StorageReferenceable, Cuckoo.ProtocolMock {
    typealias MocksType = StorageReferenceable
    typealias Stubbing = __StubbingProxy_StorageReferenceable
    typealias Verification = __VerificationProxy_StorageReferenceable
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "child", "returnSignature": " -> StorageReferenceable", "fullyQualifiedName": "child(from: String) -> StorageReferenceable", "parameterSignature": "from path: String", "parameterSignatureWithoutNames": "path: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "path", "call": "from: path", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("from"), name: "path", type: "String", range: CountableRange(90..<107), nameRange: CountableRange(90..<94))], "returnType": "StorageReferenceable", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubFunction"]
     func child(from path: String)  -> StorageReferenceable {
        
            return cuckoo_manager.call("child(from: String) -> StorageReferenceable",
                parameters: (path),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "downloadImageUrl", "returnSignature": "", "fullyQualifiedName": "downloadImageUrl(completion: @escaping (URL?, Error?) -> Void)", "parameterSignature": "completion: @escaping (URL?, Error?) -> Void", "parameterSignatureWithoutNames": "completion: @escaping (URL?, Error?) -> Void", "inputTypes": "(URL?, Error?) -> Void", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": true, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "completion", "call": "completion: completion", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("completion"), name: "completion", type: "@escaping (URL?, Error?) -> Void", range: CountableRange(159..<203), nameRange: CountableRange(159..<169))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func downloadImageUrl(completion: @escaping (URL?, Error?) -> Void)  {
        
            return cuckoo_manager.call("downloadImageUrl(completion: @escaping (URL?, Error?) -> Void)",
                parameters: (completion),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_StorageReferenceable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func child<M1: Cuckoo.Matchable>(from path: M1) -> Cuckoo.ProtocolStubFunction<(String), StorageReferenceable> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: path) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockStorageReferenceable.self, method: "child(from: String) -> StorageReferenceable", parameterMatchers: matchers))
	    }
	    
	    func downloadImageUrl<M1: Cuckoo.Matchable>(completion: M1) -> Cuckoo.ProtocolStubNoReturnFunction<((URL?, Error?) -> Void)> where M1.MatchedType == (URL?, Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((URL?, Error?) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockStorageReferenceable.self, method: "downloadImageUrl(completion: @escaping (URL?, Error?) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_StorageReferenceable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func child<M1: Cuckoo.Matchable>(from path: M1) -> Cuckoo.__DoNotUse<StorageReferenceable> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: path) { $0 }]
	        return cuckoo_manager.verify("child(from: String) -> StorageReferenceable", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func downloadImageUrl<M1: Cuckoo.Matchable>(completion: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == (URL?, Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((URL?, Error?) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return cuckoo_manager.verify("downloadImageUrl(completion: @escaping (URL?, Error?) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class StorageReferenceableStub: StorageReferenceable {
    

    

    
     func child(from path: String)  -> StorageReferenceable {
        return DefaultValueRegistry.defaultValue(for: StorageReferenceable.self)
    }
    
     func downloadImageUrl(completion: @escaping (URL?, Error?) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Login/Interactor/LoginPresenterInteractable.swift at 2018-05-23 10:40:43 +0000

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

    
    // ["name": "loginPresenter", "stubType": "ProtocolToBeStubbedProperty", "@type": "InstanceVariable", "type": "LoginInteractorPresentable?", "isReadOnly": false, "accessibility": ""]
     var loginPresenter: LoginInteractorPresentable? {
        get {
            
            return cuckoo_manager.getter("loginPresenter", superclassCall: Cuckoo.MockManager.crashOnProtocolSuperclassCall())
            
        }
        
        set {
            
            cuckoo_manager.setter("loginPresenter", value: newValue, superclassCall: Cuckoo.MockManager.crashOnProtocolSuperclassCall())
            
        }
        
    }
    
    // ["name": "userAuthenticator", "stubType": "ProtocolToBeStubbedProperty", "@type": "InstanceVariable", "type": "LoginAuthenticating?", "isReadOnly": false, "accessibility": ""]
     var userAuthenticator: LoginAuthenticating? {
        get {
            
            return cuckoo_manager.getter("userAuthenticator", superclassCall: Cuckoo.MockManager.crashOnProtocolSuperclassCall())
            
        }
        
        set {
            
            cuckoo_manager.setter("userAuthenticator", value: newValue, superclassCall: Cuckoo.MockManager.crashOnProtocolSuperclassCall())
            
        }
        
    }
    

    

    
    // ["name": "signIn", "returnSignature": "", "fullyQualifiedName": "signIn(withEmail: String, password: String)", "parameterSignature": "withEmail email: String, password: String", "parameterSignatureWithoutNames": "email: String, password: String", "inputTypes": "String, String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "email, password", "call": "withEmail: email, password: password", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("withEmail"), name: "email", type: "String", range: CountableRange(351..<374), nameRange: CountableRange(351..<360)), CuckooGeneratorFramework.MethodParameter(label: Optional("password"), name: "password", type: "String", range: CountableRange(376..<392), nameRange: CountableRange(376..<384))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
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
	    
	    var loginPresenter: Cuckoo.ProtocolToBeStubbedProperty<MockLoginPresenterInteractable, LoginInteractorPresentable?> {
	        return .init(manager: cuckoo_manager, name: "loginPresenter")
	    }
	    
	    var userAuthenticator: Cuckoo.ProtocolToBeStubbedProperty<MockLoginPresenterInteractable, LoginAuthenticating?> {
	        return .init(manager: cuckoo_manager, name: "userAuthenticator")
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
	
	    
	    var loginPresenter: Cuckoo.VerifyProperty<LoginInteractorPresentable?> {
	        return .init(manager: cuckoo_manager, name: "loginPresenter", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var userAuthenticator: Cuckoo.VerifyProperty<LoginAuthenticating?> {
	        return .init(manager: cuckoo_manager, name: "userAuthenticator", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func signIn<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(withEmail email: M1, password: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String)>] = [wrap(matchable: email) { $0.0 }, wrap(matchable: password) { $0.1 }]
	        return cuckoo_manager.verify("signIn(withEmail: String, password: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class LoginPresenterInteractableStub: LoginPresenterInteractable {
    
     var loginPresenter: LoginInteractorPresentable? {
        get {
            return DefaultValueRegistry.defaultValue(for: (LoginInteractorPresentable?).self)
        }
        
        set { }
        
    }
    
     var userAuthenticator: LoginAuthenticating? {
        get {
            return DefaultValueRegistry.defaultValue(for: (LoginAuthenticating?).self)
        }
        
        set { }
        
    }
    

    

    
     func signIn(withEmail email: String, password: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Login/Presenter/LoginInteractorPresentable.swift at 2018-05-23 10:40:43 +0000

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


// MARK: - Mocks generated from file: Showcase-iOS/Login/Service/AuthDataResultProtocol.swift at 2018-05-23 10:40:43 +0000

//
//  FIRAuthDataResultProtocol.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/16.
//  Copyright © 2018 DVT. All rights reserved.
//

import Cuckoo
@testable import Showcase_iOS

import FirebaseAuth
import Foundation

class MockAuthDataResultProtocol: AuthDataResultProtocol, Cuckoo.ProtocolMock {
    typealias MocksType = AuthDataResultProtocol
    typealias Stubbing = __StubbingProxy_AuthDataResultProtocol
    typealias Verification = __VerificationProxy_AuthDataResultProtocol
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    
    // ["name": "user", "stubType": "ProtocolToBeStubbedReadOnlyProperty", "@type": "InstanceVariable", "type": "FirUserProtocol", "isReadOnly": true, "accessibility": ""]
     var user: FirUserProtocol {
        get {
            
            return cuckoo_manager.getter("user", superclassCall: Cuckoo.MockManager.crashOnProtocolSuperclassCall())
            
        }
        
    }
    

    

    

	struct __StubbingProxy_AuthDataResultProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    var user: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockAuthDataResultProtocol, FirUserProtocol> {
	        return .init(manager: cuckoo_manager, name: "user")
	    }
	    
	    
	}

	struct __VerificationProxy_AuthDataResultProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    var user: Cuckoo.VerifyReadOnlyProperty<FirUserProtocol> {
	        return .init(manager: cuckoo_manager, name: "user", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}

}

 class AuthDataResultProtocolStub: AuthDataResultProtocol {
    
     var user: FirUserProtocol {
        get {
            return DefaultValueRegistry.defaultValue(for: (FirUserProtocol).self)
        }
        
    }
    

    

    
}


// MARK: - Mocks generated from file: Showcase-iOS/Login/Service/FirebaseLoginAuthenticating.swift at 2018-05-23 10:40:43 +0000

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

    

    

    
    // ["name": "signIn", "returnSignature": "", "fullyQualifiedName": "signIn(withEmail: String, password: String, completion: @escaping (AuthDataResultProtocol?, Error?) -> Void)", "parameterSignature": "withEmail email: String, password: String, completion: @escaping (AuthDataResultProtocol?, Error?) -> Void", "parameterSignatureWithoutNames": "email: String, password: String, completion: @escaping (AuthDataResultProtocol?, Error?) -> Void", "inputTypes": "String, String, (AuthDataResultProtocol?, Error?) -> Void", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": true, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "email, password, completion", "call": "withEmail: email, password: password, completion: completion", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("withEmail"), name: "email", type: "String", range: CountableRange(230..<253), nameRange: CountableRange(230..<239)), CuckooGeneratorFramework.MethodParameter(label: Optional("password"), name: "password", type: "String", range: CountableRange(255..<271), nameRange: CountableRange(255..<263)), CuckooGeneratorFramework.MethodParameter(label: Optional("completion"), name: "completion", type: "@escaping (AuthDataResultProtocol?, Error?) -> Void", range: CountableRange(273..<336), nameRange: CountableRange(273..<283))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func signIn(withEmail email: String, password: String, completion: @escaping (AuthDataResultProtocol?, Error?) -> Void)  {
        
            return cuckoo_manager.call("signIn(withEmail: String, password: String, completion: @escaping (AuthDataResultProtocol?, Error?) -> Void)",
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
	    
	    
	    func signIn<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(withEmail email: M1, password: M2, completion: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(String, String, (AuthDataResultProtocol?, Error?) -> Void)> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == (AuthDataResultProtocol?, Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String, (AuthDataResultProtocol?, Error?) -> Void)>] = [wrap(matchable: email) { $0.0 }, wrap(matchable: password) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockFirebaseLoginAuthenticating.self, method: "signIn(withEmail: String, password: String, completion: @escaping (AuthDataResultProtocol?, Error?) -> Void)", parameterMatchers: matchers))
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
	    func signIn<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(withEmail email: M1, password: M2, completion: M3) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == (AuthDataResultProtocol?, Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String, (AuthDataResultProtocol?, Error?) -> Void)>] = [wrap(matchable: email) { $0.0 }, wrap(matchable: password) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return cuckoo_manager.verify("signIn(withEmail: String, password: String, completion: @escaping (AuthDataResultProtocol?, Error?) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class FirebaseLoginAuthenticatingStub: FirebaseLoginAuthenticating {
    

    

    
     func signIn(withEmail email: String, password: String, completion: @escaping (AuthDataResultProtocol?, Error?) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Login/Service/LoginAuthenticating.swift at 2018-05-23 10:40:43 +0000

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

    

    

    
    // ["name": "signIn", "returnSignature": "", "fullyQualifiedName": "signIn(withEmail: String, password: String, completion: @escaping (AuthDataResultProtocol?, Error?) -> Void)", "parameterSignature": "withEmail email: String, password: String, completion: @escaping (AuthDataResultProtocol?, Error?) -> Void", "parameterSignatureWithoutNames": "email: String, password: String, completion: @escaping (AuthDataResultProtocol?, Error?) -> Void", "inputTypes": "String, String, (AuthDataResultProtocol?, Error?) -> Void", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": true, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "email, password, completion", "call": "withEmail: email, password: password, completion: completion", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("withEmail"), name: "email", type: "String", range: CountableRange(214..<237), nameRange: CountableRange(214..<223)), CuckooGeneratorFramework.MethodParameter(label: Optional("password"), name: "password", type: "String", range: CountableRange(239..<255), nameRange: CountableRange(239..<247)), CuckooGeneratorFramework.MethodParameter(label: Optional("completion"), name: "completion", type: "@escaping (AuthDataResultProtocol?, Error?) -> Void", range: CountableRange(257..<320), nameRange: CountableRange(257..<267))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func signIn(withEmail email: String, password: String, completion: @escaping (AuthDataResultProtocol?, Error?) -> Void)  {
        
            return cuckoo_manager.call("signIn(withEmail: String, password: String, completion: @escaping (AuthDataResultProtocol?, Error?) -> Void)",
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
	    
	    
	    func signIn<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(withEmail email: M1, password: M2, completion: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(String, String, (AuthDataResultProtocol?, Error?) -> Void)> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == (AuthDataResultProtocol?, Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String, (AuthDataResultProtocol?, Error?) -> Void)>] = [wrap(matchable: email) { $0.0 }, wrap(matchable: password) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockLoginAuthenticating.self, method: "signIn(withEmail: String, password: String, completion: @escaping (AuthDataResultProtocol?, Error?) -> Void)", parameterMatchers: matchers))
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
	    func signIn<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(withEmail email: M1, password: M2, completion: M3) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == (AuthDataResultProtocol?, Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String, (AuthDataResultProtocol?, Error?) -> Void)>] = [wrap(matchable: email) { $0.0 }, wrap(matchable: password) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return cuckoo_manager.verify("signIn(withEmail: String, password: String, completion: @escaping (AuthDataResultProtocol?, Error?) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class LoginAuthenticatingStub: LoginAuthenticating {
    

    

    
     func signIn(withEmail email: String, password: String, completion: @escaping (AuthDataResultProtocol?, Error?) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Login/View/Extensions/KeyBoardDelegate.swift at 2018-05-23 10:40:43 +0000

//
//  KeyBoardDelegate.swift
//  Showcase-iOSTests
//
//  Created by Lehlohonolo Mbele on 2018/05/10.
//  Copyright © 2018 DVT. All rights reserved.
//

import Cuckoo
@testable import Showcase_iOS

import Foundation
import UIKit

// MARK: - Mocks generated from file: Showcase-iOS/Login/View/Extensions/KeyboardObservable.swift at 2018-05-23 10:40:43 +0000

//
//  KeyboardObservable.swift
//  Showcase-iOSTests
//
//  Created by Lehlohonolo Mbele on 2018/05/10.
//  Copyright © 2018 DVT. All rights reserved.
//

import Cuckoo
@testable import Showcase_iOS

import Foundation

class MockKeyboardObservable: KeyboardObservable, Cuckoo.ProtocolMock {
    typealias MocksType = KeyboardObservable
    typealias Stubbing = __StubbingProxy_KeyboardObservable
    typealias Verification = __VerificationProxy_KeyboardObservable
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "addObservers", "returnSignature": "", "fullyQualifiedName": "addObservers()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func addObservers()  {
        
            return cuckoo_manager.call("addObservers()",
                parameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "removeObservers", "returnSignature": "", "fullyQualifiedName": "removeObservers()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func removeObservers()  {
        
            return cuckoo_manager.call("removeObservers()",
                parameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_KeyboardObservable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func addObservers() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockKeyboardObservable.self, method: "addObservers()", parameterMatchers: matchers))
	    }
	    
	    func removeObservers() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockKeyboardObservable.self, method: "removeObservers()", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_KeyboardObservable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func addObservers() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("addObservers()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func removeObservers() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("removeObservers()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class KeyboardObservableStub: KeyboardObservable {
    

    

    
     func addObservers()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func removeObservers()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Login/View/Extensions/NotificationCenterDelegate.swift at 2018-05-23 10:40:43 +0000

//
//  NotificationCenterDelegate.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/10.
//  Copyright © 2018 DVT. All rights reserved.
//

import Cuckoo
@testable import Showcase_iOS

import Foundation

class MockNotificationCenterDelegate: NotificationCenterDelegate, Cuckoo.ProtocolMock {
    typealias MocksType = NotificationCenterDelegate
    typealias Stubbing = __StubbingProxy_NotificationCenterDelegate
    typealias Verification = __VerificationProxy_NotificationCenterDelegate
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "removeObserver", "returnSignature": "", "fullyQualifiedName": "removeObserver(_: Any)", "parameterSignature": "_ observer: Any", "parameterSignatureWithoutNames": "observer: Any", "inputTypes": "Any", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "observer", "call": "observer", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "observer", type: "Any", range: CountableRange(248..<263), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func removeObserver(_ observer: Any)  {
        
            return cuckoo_manager.call("removeObserver(_: Any)",
                parameters: (observer),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "addObserver", "returnSignature": "", "fullyQualifiedName": "addObserver(_: Any, selector: Selector, name: NSNotification.Name?, object: Any?)", "parameterSignature": "_ observer: Any, selector: Selector, name: NSNotification.Name?, object: Any?", "parameterSignatureWithoutNames": "observer: Any, selector: Selector, name: NSNotification.Name?, object: Any?", "inputTypes": "Any, Selector, NSNotification.Name?, Any?", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "observer, selector, name, object", "call": "observer, selector: selector, name: name, object: object", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "observer", type: "Any", range: CountableRange(286..<301), nameRange: CountableRange(0..<0)), CuckooGeneratorFramework.MethodParameter(label: Optional("selector"), name: "selector", type: "Selector", range: CountableRange(303..<321), nameRange: CountableRange(303..<311)), CuckooGeneratorFramework.MethodParameter(label: Optional("name"), name: "name", type: "NSNotification.Name?", range: CountableRange(323..<349), nameRange: CountableRange(323..<327)), CuckooGeneratorFramework.MethodParameter(label: Optional("object"), name: "object", type: "Any?", range: CountableRange(351..<363), nameRange: CountableRange(351..<357))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func addObserver(_ observer: Any, selector: Selector, name: NSNotification.Name?, object: Any?)  {
        
            return cuckoo_manager.call("addObserver(_: Any, selector: Selector, name: NSNotification.Name?, object: Any?)",
                parameters: (observer, selector, name, object),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "post", "returnSignature": "", "fullyQualifiedName": "post(_: Notification)", "parameterSignature": "_ notification: Notification", "parameterSignatureWithoutNames": "notification: Notification", "inputTypes": "Notification", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "notification", "call": "notification", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "notification", type: "Notification", range: CountableRange(379..<407), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func post(_ notification: Notification)  {
        
            return cuckoo_manager.call("post(_: Notification)",
                parameters: (notification),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_NotificationCenterDelegate: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func removeObserver<M1: Cuckoo.Matchable>(_ observer: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Any)> where M1.MatchedType == Any {
	        let matchers: [Cuckoo.ParameterMatcher<(Any)>] = [wrap(matchable: observer) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockNotificationCenterDelegate.self, method: "removeObserver(_: Any)", parameterMatchers: matchers))
	    }
	    
	    func addObserver<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable, M4: Cuckoo.Matchable>(_ observer: M1, selector: M2, name: M3, object: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(Any, Selector, NSNotification.Name?, Any?)> where M1.MatchedType == Any, M2.MatchedType == Selector, M3.MatchedType == NSNotification.Name?, M4.MatchedType == Any? {
	        let matchers: [Cuckoo.ParameterMatcher<(Any, Selector, NSNotification.Name?, Any?)>] = [wrap(matchable: observer) { $0.0 }, wrap(matchable: selector) { $0.1 }, wrap(matchable: name) { $0.2 }, wrap(matchable: object) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockNotificationCenterDelegate.self, method: "addObserver(_: Any, selector: Selector, name: NSNotification.Name?, object: Any?)", parameterMatchers: matchers))
	    }
	    
	    func post<M1: Cuckoo.Matchable>(_ notification: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Notification)> where M1.MatchedType == Notification {
	        let matchers: [Cuckoo.ParameterMatcher<(Notification)>] = [wrap(matchable: notification) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockNotificationCenterDelegate.self, method: "post(_: Notification)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_NotificationCenterDelegate: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func removeObserver<M1: Cuckoo.Matchable>(_ observer: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Any {
	        let matchers: [Cuckoo.ParameterMatcher<(Any)>] = [wrap(matchable: observer) { $0 }]
	        return cuckoo_manager.verify("removeObserver(_: Any)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func addObserver<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable, M4: Cuckoo.Matchable>(_ observer: M1, selector: M2, name: M3, object: M4) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Any, M2.MatchedType == Selector, M3.MatchedType == NSNotification.Name?, M4.MatchedType == Any? {
	        let matchers: [Cuckoo.ParameterMatcher<(Any, Selector, NSNotification.Name?, Any?)>] = [wrap(matchable: observer) { $0.0 }, wrap(matchable: selector) { $0.1 }, wrap(matchable: name) { $0.2 }, wrap(matchable: object) { $0.3 }]
	        return cuckoo_manager.verify("addObserver(_: Any, selector: Selector, name: NSNotification.Name?, object: Any?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func post<M1: Cuckoo.Matchable>(_ notification: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Notification {
	        let matchers: [Cuckoo.ParameterMatcher<(Notification)>] = [wrap(matchable: notification) { $0 }]
	        return cuckoo_manager.verify("post(_: Notification)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class NotificationCenterDelegateStub: NotificationCenterDelegate {
    

    

    
     func removeObserver(_ observer: Any)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func addObserver(_ observer: Any, selector: Selector, name: NSNotification.Name?, object: Any?)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func post(_ notification: Notification)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Login/View/LoginPresenterViewable.swift at 2018-05-23 10:40:43 +0000

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

    
    // ["name": "loginPresenter", "stubType": "ProtocolToBeStubbedProperty", "@type": "InstanceVariable", "type": "LoginPresentable?", "isReadOnly": false, "accessibility": ""]
     var loginPresenter: LoginPresentable? {
        get {
            
            return cuckoo_manager.getter("loginPresenter", superclassCall: Cuckoo.MockManager.crashOnProtocolSuperclassCall())
            
        }
        
        set {
            
            cuckoo_manager.setter("loginPresenter", value: newValue, superclassCall: Cuckoo.MockManager.crashOnProtocolSuperclassCall())
            
        }
        
    }
    

    

    
    // ["name": "showEmailValidationFailure", "returnSignature": "", "fullyQualifiedName": "showEmailValidationFailure(withError: AuthenticationError)", "parameterSignature": "withError error: AuthenticationError", "parameterSignatureWithoutNames": "error: AuthenticationError", "inputTypes": "AuthenticationError", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "error", "call": "withError: error", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("withError"), name: "error", type: "AuthenticationError", range: CountableRange(293..<329), nameRange: CountableRange(293..<302))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func showEmailValidationFailure(withError error: AuthenticationError)  {
        
            return cuckoo_manager.call("showEmailValidationFailure(withError: AuthenticationError)",
                parameters: (error),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "showPasswordValidationFailure", "returnSignature": "", "fullyQualifiedName": "showPasswordValidationFailure(withError: AuthenticationError)", "parameterSignature": "withError error: AuthenticationError", "parameterSignatureWithoutNames": "error: AuthenticationError", "inputTypes": "AuthenticationError", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "error", "call": "withError: error", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("withError"), name: "error", type: "AuthenticationError", range: CountableRange(370..<406), nameRange: CountableRange(370..<379))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func showPasswordValidationFailure(withError error: AuthenticationError)  {
        
            return cuckoo_manager.call("showPasswordValidationFailure(withError: AuthenticationError)",
                parameters: (error),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "showInvalidInputsFailure", "returnSignature": "", "fullyQualifiedName": "showInvalidInputsFailure(withError: AuthenticationError)", "parameterSignature": "withError error: AuthenticationError", "parameterSignatureWithoutNames": "error: AuthenticationError", "inputTypes": "AuthenticationError", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "error", "call": "withError: error", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("withError"), name: "error", type: "AuthenticationError", range: CountableRange(442..<478), nameRange: CountableRange(442..<451))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func showInvalidInputsFailure(withError error: AuthenticationError)  {
        
            return cuckoo_manager.call("showInvalidInputsFailure(withError: AuthenticationError)",
                parameters: (error),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "showAuthenticationFailure", "returnSignature": "", "fullyQualifiedName": "showAuthenticationFailure(withMessage: String?)", "parameterSignature": "withMessage message: String?", "parameterSignatureWithoutNames": "message: String?", "inputTypes": "String?", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "message", "call": "withMessage: message", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("withMessage"), name: "message", type: "String?", range: CountableRange(515..<543), nameRange: CountableRange(515..<526))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func showAuthenticationFailure(withMessage message: String?)  {
        
            return cuckoo_manager.call("showAuthenticationFailure(withMessage: String?)",
                parameters: (message),
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
	    
	    var loginPresenter: Cuckoo.ProtocolToBeStubbedProperty<MockLoginPresenterViewable, LoginPresentable?> {
	        return .init(manager: cuckoo_manager, name: "loginPresenter")
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
	    
	    func showAuthenticationFailure<M1: Cuckoo.Matchable>(withMessage message: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String?)> where M1.MatchedType == String? {
	        let matchers: [Cuckoo.ParameterMatcher<(String?)>] = [wrap(matchable: message) { $0 }]
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
	
	    
	    var loginPresenter: Cuckoo.VerifyProperty<LoginPresentable?> {
	        return .init(manager: cuckoo_manager, name: "loginPresenter", callMatcher: callMatcher, sourceLocation: sourceLocation)
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
	    func showAuthenticationFailure<M1: Cuckoo.Matchable>(withMessage message: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String? {
	        let matchers: [Cuckoo.ParameterMatcher<(String?)>] = [wrap(matchable: message) { $0 }]
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
    
     var loginPresenter: LoginPresentable? {
        get {
            return DefaultValueRegistry.defaultValue(for: (LoginPresentable?).self)
        }
        
        set { }
        
    }
    

    

    
     func showEmailValidationFailure(withError error: AuthenticationError)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func showPasswordValidationFailure(withError error: AuthenticationError)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func showInvalidInputsFailure(withError error: AuthenticationError)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func showAuthenticationFailure(withMessage message: String?)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func showSuccess()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Viewable.swift at 2018-05-23 10:40:43 +0000

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

