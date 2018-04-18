// MARK: - Mocks generated from file: Showcase-iOS/Login/Service/Authenticating.swift at 2018-04-18 19:22:35 +0000

//
//  Authenticating.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/04/18.
//  Copyright © 2018 DVT. All rights reserved.
//

import Cuckoo
@testable import Showcase_iOS

import Foundation

class MockAuthenticating: Authenticating, Cuckoo.ProtocolMock {
    typealias MocksType = Authenticating
    typealias Stubbing = __StubbingProxy_Authenticating
    typealias Verification = __VerificationProxy_Authenticating
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "signIn", "returnSignature": "", "fullyQualifiedName": "signIn(withEmail: String, password: String, completion: @escaping (Any?, Error?) -> Void)", "parameterSignature": "withEmail email: String, password: String, completion: @escaping (Any?, Error?) -> Void", "parameterSignatureWithoutNames": "email: String, password: String, completion: @escaping (Any?, Error?) -> Void", "inputTypes": "String, String, (Any?, Error?) -> Void", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": true, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "email, password, completion", "call": "withEmail: email, password: password, completion: completion", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("withEmail"), name: "email", type: "String", range: CountableRange(209..<232), nameRange: CountableRange(209..<218)), CuckooGeneratorFramework.MethodParameter(label: Optional("password"), name: "password", type: "String", range: CountableRange(234..<250), nameRange: CountableRange(234..<242)), CuckooGeneratorFramework.MethodParameter(label: Optional("completion"), name: "completion", type: "@escaping (Any?, Error?) -> Void", range: CountableRange(252..<296), nameRange: CountableRange(252..<262))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func signIn(withEmail email: String, password: String, completion: @escaping (Any?, Error?) -> Void)  {
        
            return cuckoo_manager.call("signIn(withEmail: String, password: String, completion: @escaping (Any?, Error?) -> Void)",
                parameters: (email, password, completion),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_Authenticating: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func signIn<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(withEmail email: M1, password: M2, completion: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(String, String, (Any?, Error?) -> Void)> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == (Any?, Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String, (Any?, Error?) -> Void)>] = [wrap(matchable: email) { $0.0 }, wrap(matchable: password) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAuthenticating.self, method: "signIn(withEmail: String, password: String, completion: @escaping (Any?, Error?) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_Authenticating: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func signIn<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(withEmail email: M1, password: M2, completion: M3) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == (Any?, Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String, (Any?, Error?) -> Void)>] = [wrap(matchable: email) { $0.0 }, wrap(matchable: password) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return cuckoo_manager.verify("signIn(withEmail: String, password: String, completion: @escaping (Any?, Error?) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class AuthenticatingStub: Authenticating {
    

    

    
     func signIn(withEmail email: String, password: String, completion: @escaping (Any?, Error?) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Viewable.swift at 2018-04-18 19:22:35 +0000

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

