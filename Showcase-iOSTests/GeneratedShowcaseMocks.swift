// MARK: - Mocks generated from file: Showcase-iOS/Firebase/Service/DataReferenceable.swift at 2018-04-19 12:03:43 +0000


import Cuckoo
@testable import Showcase_iOS

import FirebaseDatabase
import Foundation

class MockDataReferenceable: DataReferenceable, Cuckoo.ProtocolMock {
    typealias MocksType = DataReferenceable
    typealias Stubbing = __StubbingProxy_DataReferenceable
    typealias Verification = __VerificationProxy_DataReferenceable
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "child", "returnSignature": " -> DataReferenceable", "fullyQualifiedName": "child(path: String) -> DataReferenceable", "parameterSignature": "path: String", "parameterSignatureWithoutNames": "path: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "path", "call": "path: path", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("path"), name: "path", type: "String", range: CountableRange(88..<100), nameRange: CountableRange(88..<92))], "returnType": "DataReferenceable", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubFunction"]
     func child(path: String)  -> DataReferenceable {
        
            return cuckoo_manager.call("child(path: String) -> DataReferenceable",
                parameters: (path),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_DataReferenceable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func child<M1: Cuckoo.Matchable>(path: M1) -> Cuckoo.ProtocolStubFunction<(String), DataReferenceable> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: path) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockDataReferenceable.self, method: "child(path: String) -> DataReferenceable", parameterMatchers: matchers))
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
	    func child<M1: Cuckoo.Matchable>(path: M1) -> Cuckoo.__DoNotUse<DataReferenceable> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: path) { $0 }]
	        return cuckoo_manager.verify("child(path: String) -> DataReferenceable", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class DataReferenceableStub: DataReferenceable {
    

    

    
     func child(path: String)  -> DataReferenceable {
        return DefaultValueRegistry.defaultValue(for: DataReferenceable.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Firebase/Service/FirebaseRetrievable.swift at 2018-04-19 12:03:43 +0000


import Cuckoo
@testable import Showcase_iOS

import FirebaseDatabase
import Foundation

class MockFirebaseRetrievable: FirebaseRetrievable, Cuckoo.ProtocolMock {
    typealias MocksType = FirebaseRetrievable
    typealias Stubbing = __StubbingProxy_FirebaseRetrievable
    typealias Verification = __VerificationProxy_FirebaseRetrievable
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "database", "returnSignature": " -> DataReferenceable", "fullyQualifiedName": "database() -> DataReferenceable", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "DataReferenceable", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubFunction"]
     func database()  -> DataReferenceable {
        
            return cuckoo_manager.call("database() -> DataReferenceable",
                parameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_FirebaseRetrievable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func database() -> Cuckoo.ProtocolStubFunction<(), DataReferenceable> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockFirebaseRetrievable.self, method: "database() -> DataReferenceable", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_FirebaseRetrievable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func database() -> Cuckoo.__DoNotUse<DataReferenceable> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("database() -> DataReferenceable", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class FirebaseRetrievableStub: FirebaseRetrievable {
    

    

    
     func database()  -> DataReferenceable {
        return DefaultValueRegistry.defaultValue(for: DataReferenceable.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Viewable.swift at 2018-04-19 12:03:43 +0000

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

