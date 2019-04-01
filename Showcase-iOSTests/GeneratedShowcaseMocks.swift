// MARK: - Mocks generated from file: Showcase-iOS/About/Interactor/AboutInteractable.swift at 2019-04-01 10:11:01 +0000

//
//  AboutInteractable.swift
//  Showcase-iOS
//
//  Created by Sashen Pillay on 2019/03/14.
//  Copyright © 2019 DVT. All rights reserved.
//

import Cuckoo
@testable import Showcase_iOS

import Foundation


 class MockAboutInteractable: AboutInteractable, Cuckoo.ProtocolMock {
     typealias MocksType = AboutInteractable
     typealias Stubbing = __StubbingProxy_AboutInteractable
     typealias Verification = __VerificationProxy_AboutInteractable

    private var __defaultImplStub: AboutInteractable?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: AboutInteractable) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func retrieveSocialMediaLinks()  {
        
            return cuckoo_manager.call("retrieveSocialMediaLinks()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.retrieveSocialMediaLinks())
        
    }
    

	 struct __StubbingProxy_AboutInteractable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func retrieveSocialMediaLinks() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockAboutInteractable.self, method: "retrieveSocialMediaLinks()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_AboutInteractable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func retrieveSocialMediaLinks() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("retrieveSocialMediaLinks()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class AboutInteractableStub: AboutInteractable {
    

    

    
     func retrieveSocialMediaLinks()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/About/Presenter/AboutPresentable.swift at 2019-04-01 10:11:01 +0000


import Cuckoo
@testable import Showcase_iOS

import Foundation


 class MockAboutPresentable: AboutPresentable, Cuckoo.ProtocolMock {
     typealias MocksType = AboutPresentable
     typealias Stubbing = __StubbingProxy_AboutPresentable
     typealias Verification = __VerificationProxy_AboutPresentable

    private var __defaultImplStub: AboutPresentable?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: AboutPresentable) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func onRetrieveSocialMediaLinksComplete(with links: SocialMediaLinks)  {
        
            return cuckoo_manager.call("onRetrieveSocialMediaLinksComplete(with: SocialMediaLinks)",
                parameters: (links),
                escapingParameters: (links),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.onRetrieveSocialMediaLinksComplete(with: links))
        
    }
    
    
    
     func onRetrieveSocialMediaLinksFailed(with error: Error)  {
        
            return cuckoo_manager.call("onRetrieveSocialMediaLinksFailed(with: Error)",
                parameters: (error),
                escapingParameters: (error),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.onRetrieveSocialMediaLinksFailed(with: error))
        
    }
    
    
    
     func retrieveSocialMediaLinks()  {
        
            return cuckoo_manager.call("retrieveSocialMediaLinks()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.retrieveSocialMediaLinks())
        
    }
    
    
    
     func trackSocialMediaButtonTap(with analyticTag: AnalyticTag)  {
        
            return cuckoo_manager.call("trackSocialMediaButtonTap(with: AnalyticTag)",
                parameters: (analyticTag),
                escapingParameters: (analyticTag),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.trackSocialMediaButtonTap(with: analyticTag))
        
    }
    

	 struct __StubbingProxy_AboutPresentable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func onRetrieveSocialMediaLinksComplete<M1: Cuckoo.Matchable>(with links: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(SocialMediaLinks)> where M1.MatchedType == SocialMediaLinks {
	        let matchers: [Cuckoo.ParameterMatcher<(SocialMediaLinks)>] = [wrap(matchable: links) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAboutPresentable.self, method: "onRetrieveSocialMediaLinksComplete(with: SocialMediaLinks)", parameterMatchers: matchers))
	    }
	    
	    func onRetrieveSocialMediaLinksFailed<M1: Cuckoo.Matchable>(with error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAboutPresentable.self, method: "onRetrieveSocialMediaLinksFailed(with: Error)", parameterMatchers: matchers))
	    }
	    
	    func retrieveSocialMediaLinks() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockAboutPresentable.self, method: "retrieveSocialMediaLinks()", parameterMatchers: matchers))
	    }
	    
	    func trackSocialMediaButtonTap<M1: Cuckoo.Matchable>(with analyticTag: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(AnalyticTag)> where M1.MatchedType == AnalyticTag {
	        let matchers: [Cuckoo.ParameterMatcher<(AnalyticTag)>] = [wrap(matchable: analyticTag) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAboutPresentable.self, method: "trackSocialMediaButtonTap(with: AnalyticTag)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_AboutPresentable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func onRetrieveSocialMediaLinksComplete<M1: Cuckoo.Matchable>(with links: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == SocialMediaLinks {
	        let matchers: [Cuckoo.ParameterMatcher<(SocialMediaLinks)>] = [wrap(matchable: links) { $0 }]
	        return cuckoo_manager.verify("onRetrieveSocialMediaLinksComplete(with: SocialMediaLinks)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func onRetrieveSocialMediaLinksFailed<M1: Cuckoo.Matchable>(with error: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("onRetrieveSocialMediaLinksFailed(with: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func retrieveSocialMediaLinks() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("retrieveSocialMediaLinks()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func trackSocialMediaButtonTap<M1: Cuckoo.Matchable>(with analyticTag: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == AnalyticTag {
	        let matchers: [Cuckoo.ParameterMatcher<(AnalyticTag)>] = [wrap(matchable: analyticTag) { $0 }]
	        return cuckoo_manager.verify("trackSocialMediaButtonTap(with: AnalyticTag)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class AboutPresentableStub: AboutPresentable {
    

    

    
     func onRetrieveSocialMediaLinksComplete(with links: SocialMediaLinks)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func onRetrieveSocialMediaLinksFailed(with error: Error)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func retrieveSocialMediaLinks()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func trackSocialMediaButtonTap(with analyticTag: AnalyticTag)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/About/View/AboutPresenterViewable.swift at 2019-04-01 10:11:01 +0000


import Cuckoo
@testable import Showcase_iOS

import Foundation


 class MockAboutPresenterViewable: AboutPresenterViewable, Cuckoo.ProtocolMock {
     typealias MocksType = AboutPresenterViewable
     typealias Stubbing = __StubbingProxy_AboutPresenterViewable
     typealias Verification = __VerificationProxy_AboutPresenterViewable

    private var __defaultImplStub: AboutPresenterViewable?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: AboutPresenterViewable) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func showOnSuccess(with aboutViewModel: AboutViewModel)  {
        
            return cuckoo_manager.call("showOnSuccess(with: AboutViewModel)",
                parameters: (aboutViewModel),
                escapingParameters: (aboutViewModel),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.showOnSuccess(with: aboutViewModel))
        
    }
    
    
    
     func hideOnFailure(with error: Error)  {
        
            return cuckoo_manager.call("hideOnFailure(with: Error)",
                parameters: (error),
                escapingParameters: (error),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.hideOnFailure(with: error))
        
    }
    
    
    
     func startLoadingAnimation()  {
        
            return cuckoo_manager.call("startLoadingAnimation()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.startLoadingAnimation())
        
    }
    
    
    
     func stopLoadingAnimation()  {
        
            return cuckoo_manager.call("stopLoadingAnimation()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.stopLoadingAnimation())
        
    }
    

	 struct __StubbingProxy_AboutPresenterViewable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func showOnSuccess<M1: Cuckoo.Matchable>(with aboutViewModel: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(AboutViewModel)> where M1.MatchedType == AboutViewModel {
	        let matchers: [Cuckoo.ParameterMatcher<(AboutViewModel)>] = [wrap(matchable: aboutViewModel) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAboutPresenterViewable.self, method: "showOnSuccess(with: AboutViewModel)", parameterMatchers: matchers))
	    }
	    
	    func hideOnFailure<M1: Cuckoo.Matchable>(with error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAboutPresenterViewable.self, method: "hideOnFailure(with: Error)", parameterMatchers: matchers))
	    }
	    
	    func startLoadingAnimation() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockAboutPresenterViewable.self, method: "startLoadingAnimation()", parameterMatchers: matchers))
	    }
	    
	    func stopLoadingAnimation() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockAboutPresenterViewable.self, method: "stopLoadingAnimation()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_AboutPresenterViewable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func showOnSuccess<M1: Cuckoo.Matchable>(with aboutViewModel: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == AboutViewModel {
	        let matchers: [Cuckoo.ParameterMatcher<(AboutViewModel)>] = [wrap(matchable: aboutViewModel) { $0 }]
	        return cuckoo_manager.verify("showOnSuccess(with: AboutViewModel)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func hideOnFailure<M1: Cuckoo.Matchable>(with error: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("hideOnFailure(with: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func startLoadingAnimation() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("startLoadingAnimation()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func stopLoadingAnimation() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("stopLoadingAnimation()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class AboutPresenterViewableStub: AboutPresenterViewable {
    

    

    
     func showOnSuccess(with aboutViewModel: AboutViewModel)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func hideOnFailure(with error: Error)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func startLoadingAnimation()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func stopLoadingAnimation()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Contact Us/Interactor/ContactUsInteractable.swift at 2019-04-01 10:11:01 +0000


import Cuckoo
@testable import Showcase_iOS

import Foundation


 class MockContactUsInteractable: ContactUsInteractable, Cuckoo.ProtocolMock {
     typealias MocksType = ContactUsInteractable
     typealias Stubbing = __StubbingProxy_ContactUsInteractable
     typealias Verification = __VerificationProxy_ContactUsInteractable

    private var __defaultImplStub: ContactUsInteractable?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: ContactUsInteractable) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func retrieveContacts()  {
        
            return cuckoo_manager.call("retrieveContacts()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.retrieveContacts())
        
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


// MARK: - Mocks generated from file: Showcase-iOS/Contact Us/Presenter/ContactUsPresentable.swift at 2019-04-01 10:11:01 +0000


import Cuckoo
@testable import Showcase_iOS

import Foundation


 class MockContactUsPresentable: ContactUsPresentable, Cuckoo.ProtocolMock {
     typealias MocksType = ContactUsPresentable
     typealias Stubbing = __StubbingProxy_ContactUsPresentable
     typealias Verification = __VerificationProxy_ContactUsPresentable

    private var __defaultImplStub: ContactUsPresentable?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: ContactUsPresentable) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func onRetrieveOfficesComplete(with offices: [Office])  {
        
            return cuckoo_manager.call("onRetrieveOfficesComplete(with: [Office])",
                parameters: (offices),
                escapingParameters: (offices),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.onRetrieveOfficesComplete(with: offices))
        
    }
    
    
    
     func onRetrieveOfficesFailed(with error: Error)  {
        
            return cuckoo_manager.call("onRetrieveOfficesFailed(with: Error)",
                parameters: (error),
                escapingParameters: (error),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.onRetrieveOfficesFailed(with: error))
        
    }
    
    
    
     func retrieveContacts()  {
        
            return cuckoo_manager.call("retrieveContacts()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.retrieveContacts())
        
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


// MARK: - Mocks generated from file: Showcase-iOS/Contact Us/View/ContactUsPresenterViewable.swift at 2019-04-01 10:11:01 +0000


import Cuckoo
@testable import Showcase_iOS

import Foundation


 class MockContactUsPresenterViewable: ContactUsPresenterViewable, Cuckoo.ProtocolMock {
     typealias MocksType = ContactUsPresenterViewable
     typealias Stubbing = __StubbingProxy_ContactUsPresenterViewable
     typealias Verification = __VerificationProxy_ContactUsPresenterViewable

    private var __defaultImplStub: ContactUsPresenterViewable?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: ContactUsPresenterViewable) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func showOnSuccess(with officeViewModels: [OfficeViewModel])  {
        
            return cuckoo_manager.call("showOnSuccess(with: [OfficeViewModel])",
                parameters: (officeViewModels),
                escapingParameters: (officeViewModels),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.showOnSuccess(with: officeViewModels))
        
    }
    
    
    
     func showOnFailure(with error: Error)  {
        
            return cuckoo_manager.call("showOnFailure(with: Error)",
                parameters: (error),
                escapingParameters: (error),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.showOnFailure(with: error))
        
    }
    
    
    
     func startLoadingAnimation()  {
        
            return cuckoo_manager.call("startLoadingAnimation()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.startLoadingAnimation())
        
    }
    
    
    
     func stopLoadingAnimation()  {
        
            return cuckoo_manager.call("stopLoadingAnimation()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.stopLoadingAnimation())
        
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
	    
	    func startLoadingAnimation() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockContactUsPresenterViewable.self, method: "startLoadingAnimation()", parameterMatchers: matchers))
	    }
	    
	    func stopLoadingAnimation() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockContactUsPresenterViewable.self, method: "stopLoadingAnimation()", parameterMatchers: matchers))
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
	    
	    @discardableResult
	    func startLoadingAnimation() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("startLoadingAnimation()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func stopLoadingAnimation() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("stopLoadingAnimation()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
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
    
     func startLoadingAnimation()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func stopLoadingAnimation()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Contact Us/ViewHelpers/ContactUsDelegate.swift at 2019-04-01 10:11:01 +0000


import Cuckoo
@testable import Showcase_iOS

import Foundation


 class MockContactUsDelegate: ContactUsDelegate, Cuckoo.ProtocolMock {
     typealias MocksType = ContactUsDelegate
     typealias Stubbing = __StubbingProxy_ContactUsDelegate
     typealias Verification = __VerificationProxy_ContactUsDelegate

    private var __defaultImplStub: ContactUsDelegate?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: ContactUsDelegate) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func call()  {
        
            return cuckoo_manager.call("call()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.call())
        
    }
    
    
    
     func email()  {
        
            return cuckoo_manager.call("email()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.email())
        
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


// MARK: - Mocks generated from file: Showcase-iOS/Contact Us/ViewHelpers/ContactUsNavigatorDelegate.swift at 2019-04-01 10:11:01 +0000


import Cuckoo
@testable import Showcase_iOS

import Foundation
import UIKit


 class MockContactUsNavigatorDelegate: ContactUsNavigatorDelegate, Cuckoo.ProtocolMock {
     typealias MocksType = ContactUsNavigatorDelegate
     typealias Stubbing = __StubbingProxy_ContactUsNavigatorDelegate
     typealias Verification = __VerificationProxy_ContactUsNavigatorDelegate

    private var __defaultImplStub: ContactUsNavigatorDelegate?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: ContactUsNavigatorDelegate) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func navigate(with latitude: Double, longitude: Double, branch: String)  {
        
            return cuckoo_manager.call("navigate(with: Double, longitude: Double, branch: String)",
                parameters: (latitude, longitude, branch),
                escapingParameters: (latitude, longitude, branch),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.navigate(with: latitude, longitude: longitude, branch: branch))
        
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


// MARK: - Mocks generated from file: Showcase-iOS/Contact Us/ViewHelpers/SharedApplicationDelegate.swift at 2019-04-01 10:11:01 +0000


import Cuckoo
@testable import Showcase_iOS

import Foundation


 class MockSharedApplicationDelegate: SharedApplicationDelegate, Cuckoo.ProtocolMock {
     typealias MocksType = SharedApplicationDelegate
     typealias Stubbing = __StubbingProxy_SharedApplicationDelegate
     typealias Verification = __VerificationProxy_SharedApplicationDelegate

    private var __defaultImplStub: SharedApplicationDelegate?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: SharedApplicationDelegate) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func openSharedApplication(with url: URL)  {
        
            return cuckoo_manager.call("openSharedApplication(with: URL)",
                parameters: (url),
                escapingParameters: (url),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.openSharedApplication(with: url))
        
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


// MARK: - Mocks generated from file: Showcase-iOS/Dashboard/Interactor/HomePresenterInteractable.swift at 2019-04-01 10:11:01 +0000

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

    private var __defaultImplStub: HomePresenterInteractable?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: HomePresenterInteractable) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func fetchShowcaseApps()  {
        
            return cuckoo_manager.call("fetchShowcaseApps()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.fetchShowcaseApps())
        
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


// MARK: - Mocks generated from file: Showcase-iOS/Dashboard/Presenter/HomePresentable.swift at 2019-04-01 10:11:01 +0000

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

    private var __defaultImplStub: HomePresentable?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: HomePresentable) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    
    
    
     var showcaseAppViewModels: [ShowcaseAppViewModel] {
        get {
            return cuckoo_manager.getter("showcaseAppViewModels",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.showcaseAppViewModels)
        }
        
        set {
            cuckoo_manager.setter("showcaseAppViewModels",
                value: newValue,
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.showcaseAppViewModels = newValue)
        }
        
    }
    

    

    
    
    
     func onFetchShowcaseAppsSuccess(with showcaseApps: [ShowcaseApp])  {
        
            return cuckoo_manager.call("onFetchShowcaseAppsSuccess(with: [ShowcaseApp])",
                parameters: (showcaseApps),
                escapingParameters: (showcaseApps),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.onFetchShowcaseAppsSuccess(with: showcaseApps))
        
    }
    
    
    
     func onFetchShowcaseAppsFailure(with error: DatabaseError)  {
        
            return cuckoo_manager.call("onFetchShowcaseAppsFailure(with: DatabaseError)",
                parameters: (error),
                escapingParameters: (error),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.onFetchShowcaseAppsFailure(with: error))
        
    }
    
    
    
     func fetchAllImages(for showcaseAppViewModels: [ShowcaseAppViewModel], completed: @escaping ([String: URL]) -> ())  {
        
            return cuckoo_manager.call("fetchAllImages(for: [ShowcaseAppViewModel], completed: @escaping ([String: URL]) -> ())",
                parameters: (showcaseAppViewModels, completed),
                escapingParameters: (showcaseAppViewModels, completed),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.fetchAllImages(for: showcaseAppViewModels, completed: completed))
        
    }
    
    
    
     func fetchShowcaseApps()  {
        
            return cuckoo_manager.call("fetchShowcaseApps()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.fetchShowcaseApps())
        
    }
    
    
    
     func search(text: String?)  -> [ShowcaseAppViewModel] {
        
            return cuckoo_manager.call("search(text: String?) -> [ShowcaseAppViewModel]",
                parameters: (text),
                escapingParameters: (text),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.search(text: text))
        
    }
    
    
    
     func transitionToShowcaseAppDetailView(with showcaseAppViewModel: ShowcaseAppViewModel)  {
        
            return cuckoo_manager.call("transitionToShowcaseAppDetailView(with: ShowcaseAppViewModel)",
                parameters: (showcaseAppViewModel),
                escapingParameters: (showcaseAppViewModel),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.transitionToShowcaseAppDetailView(with: showcaseAppViewModel))
        
    }
    
    
    
     func signOutUser()  {
        
            return cuckoo_manager.call("signOutUser()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.signOutUser())
        
    }
    
    
    
     func signedOut()  {
        
            return cuckoo_manager.call("signedOut()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.signedOut())
        
    }
    
    
    
     func trackScreenDidAppear(analyticTag: AnalyticTag)  {
        
            return cuckoo_manager.call("trackScreenDidAppear(analyticTag: AnalyticTag)",
                parameters: (analyticTag),
                escapingParameters: (analyticTag),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.trackScreenDidAppear(analyticTag: analyticTag))
        
    }
    
    
    
     func trackDidSelectApplication(application: String)  {
        
            return cuckoo_manager.call("trackDidSelectApplication(application: String)",
                parameters: (application),
                escapingParameters: (application),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.trackDidSelectApplication(application: application))
        
    }
    
    
    
     func trackButtonTap(analyticTag: AnalyticTag)  {
        
            return cuckoo_manager.call("trackButtonTap(analyticTag: AnalyticTag)",
                parameters: (analyticTag),
                escapingParameters: (analyticTag),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.trackButtonTap(analyticTag: analyticTag))
        
    }
    

	 struct __StubbingProxy_HomePresentable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    var showcaseAppViewModels: Cuckoo.ProtocolToBeStubbedProperty<MockHomePresentable, [ShowcaseAppViewModel]> {
	        return .init(manager: cuckoo_manager, name: "showcaseAppViewModels")
	    }
	    
	    
	    func onFetchShowcaseAppsSuccess<M1: Cuckoo.Matchable>(with showcaseApps: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([ShowcaseApp])> where M1.MatchedType == [ShowcaseApp] {
	        let matchers: [Cuckoo.ParameterMatcher<([ShowcaseApp])>] = [wrap(matchable: showcaseApps) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockHomePresentable.self, method: "onFetchShowcaseAppsSuccess(with: [ShowcaseApp])", parameterMatchers: matchers))
	    }
	    
	    func onFetchShowcaseAppsFailure<M1: Cuckoo.Matchable>(with error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(DatabaseError)> where M1.MatchedType == DatabaseError {
	        let matchers: [Cuckoo.ParameterMatcher<(DatabaseError)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockHomePresentable.self, method: "onFetchShowcaseAppsFailure(with: DatabaseError)", parameterMatchers: matchers))
	    }
	    
	    func fetchAllImages<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(for showcaseAppViewModels: M1, completed: M2) -> Cuckoo.ProtocolStubNoReturnFunction<([ShowcaseAppViewModel], ([String: URL]) -> ())> where M1.MatchedType == [ShowcaseAppViewModel], M2.MatchedType == ([String: URL]) -> () {
	        let matchers: [Cuckoo.ParameterMatcher<([ShowcaseAppViewModel], ([String: URL]) -> ())>] = [wrap(matchable: showcaseAppViewModels) { $0.0 }, wrap(matchable: completed) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockHomePresentable.self, method: "fetchAllImages(for: [ShowcaseAppViewModel], completed: @escaping ([String: URL]) -> ())", parameterMatchers: matchers))
	    }
	    
	    func fetchShowcaseApps() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockHomePresentable.self, method: "fetchShowcaseApps()", parameterMatchers: matchers))
	    }
	    
	    func search<M1: Cuckoo.Matchable>(text: M1) -> Cuckoo.ProtocolStubFunction<(String?), [ShowcaseAppViewModel]> where M1.MatchedType == String? {
	        let matchers: [Cuckoo.ParameterMatcher<(String?)>] = [wrap(matchable: text) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockHomePresentable.self, method: "search(text: String?) -> [ShowcaseAppViewModel]", parameterMatchers: matchers))
	    }
	    
	    func transitionToShowcaseAppDetailView<M1: Cuckoo.Matchable>(with showcaseAppViewModel: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ShowcaseAppViewModel)> where M1.MatchedType == ShowcaseAppViewModel {
	        let matchers: [Cuckoo.ParameterMatcher<(ShowcaseAppViewModel)>] = [wrap(matchable: showcaseAppViewModel) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockHomePresentable.self, method: "transitionToShowcaseAppDetailView(with: ShowcaseAppViewModel)", parameterMatchers: matchers))
	    }
	    
	    func signOutUser() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockHomePresentable.self, method: "signOutUser()", parameterMatchers: matchers))
	    }
	    
	    func signedOut() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockHomePresentable.self, method: "signedOut()", parameterMatchers: matchers))
	    }
	    
	    func trackScreenDidAppear<M1: Cuckoo.Matchable>(analyticTag: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(AnalyticTag)> where M1.MatchedType == AnalyticTag {
	        let matchers: [Cuckoo.ParameterMatcher<(AnalyticTag)>] = [wrap(matchable: analyticTag) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockHomePresentable.self, method: "trackScreenDidAppear(analyticTag: AnalyticTag)", parameterMatchers: matchers))
	    }
	    
	    func trackDidSelectApplication<M1: Cuckoo.Matchable>(application: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: application) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockHomePresentable.self, method: "trackDidSelectApplication(application: String)", parameterMatchers: matchers))
	    }
	    
	    func trackButtonTap<M1: Cuckoo.Matchable>(analyticTag: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(AnalyticTag)> where M1.MatchedType == AnalyticTag {
	        let matchers: [Cuckoo.ParameterMatcher<(AnalyticTag)>] = [wrap(matchable: analyticTag) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockHomePresentable.self, method: "trackButtonTap(analyticTag: AnalyticTag)", parameterMatchers: matchers))
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
	
	    
	    var showcaseAppViewModels: Cuckoo.VerifyProperty<[ShowcaseAppViewModel]> {
	        return .init(manager: cuckoo_manager, name: "showcaseAppViewModels", callMatcher: callMatcher, sourceLocation: sourceLocation)
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
	    func fetchAllImages<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(for showcaseAppViewModels: M1, completed: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == [ShowcaseAppViewModel], M2.MatchedType == ([String: URL]) -> () {
	        let matchers: [Cuckoo.ParameterMatcher<([ShowcaseAppViewModel], ([String: URL]) -> ())>] = [wrap(matchable: showcaseAppViewModels) { $0.0 }, wrap(matchable: completed) { $0.1 }]
	        return cuckoo_manager.verify("fetchAllImages(for: [ShowcaseAppViewModel], completed: @escaping ([String: URL]) -> ())", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func fetchShowcaseApps() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("fetchShowcaseApps()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func search<M1: Cuckoo.Matchable>(text: M1) -> Cuckoo.__DoNotUse<[ShowcaseAppViewModel]> where M1.MatchedType == String? {
	        let matchers: [Cuckoo.ParameterMatcher<(String?)>] = [wrap(matchable: text) { $0 }]
	        return cuckoo_manager.verify("search(text: String?) -> [ShowcaseAppViewModel]", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func transitionToShowcaseAppDetailView<M1: Cuckoo.Matchable>(with showcaseAppViewModel: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == ShowcaseAppViewModel {
	        let matchers: [Cuckoo.ParameterMatcher<(ShowcaseAppViewModel)>] = [wrap(matchable: showcaseAppViewModel) { $0 }]
	        return cuckoo_manager.verify("transitionToShowcaseAppDetailView(with: ShowcaseAppViewModel)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func signOutUser() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("signOutUser()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func signedOut() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("signedOut()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func trackScreenDidAppear<M1: Cuckoo.Matchable>(analyticTag: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == AnalyticTag {
	        let matchers: [Cuckoo.ParameterMatcher<(AnalyticTag)>] = [wrap(matchable: analyticTag) { $0 }]
	        return cuckoo_manager.verify("trackScreenDidAppear(analyticTag: AnalyticTag)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func trackDidSelectApplication<M1: Cuckoo.Matchable>(application: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: application) { $0 }]
	        return cuckoo_manager.verify("trackDidSelectApplication(application: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func trackButtonTap<M1: Cuckoo.Matchable>(analyticTag: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == AnalyticTag {
	        let matchers: [Cuckoo.ParameterMatcher<(AnalyticTag)>] = [wrap(matchable: analyticTag) { $0 }]
	        return cuckoo_manager.verify("trackButtonTap(analyticTag: AnalyticTag)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class HomePresentableStub: HomePresentable {
    
     var showcaseAppViewModels: [ShowcaseAppViewModel] {
        get {
            return DefaultValueRegistry.defaultValue(for: ([ShowcaseAppViewModel]).self)
        }
        
        set { }
        
    }
    

    

    
     func onFetchShowcaseAppsSuccess(with showcaseApps: [ShowcaseApp])  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func onFetchShowcaseAppsFailure(with error: DatabaseError)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func fetchAllImages(for showcaseAppViewModels: [ShowcaseAppViewModel], completed: @escaping ([String: URL]) -> ())  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func fetchShowcaseApps()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func search(text: String?)  -> [ShowcaseAppViewModel] {
        return DefaultValueRegistry.defaultValue(for: [ShowcaseAppViewModel].self)
    }
    
     func transitionToShowcaseAppDetailView(with showcaseAppViewModel: ShowcaseAppViewModel)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func signOutUser()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func signedOut()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func trackScreenDidAppear(analyticTag: AnalyticTag)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func trackDidSelectApplication(application: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func trackButtonTap(analyticTag: AnalyticTag)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Dashboard/View/HomePresenterViewable.swift at 2019-04-01 10:11:01 +0000


import Cuckoo
@testable import Showcase_iOS

import Foundation


 class MockHomePresenterViewable: HomePresenterViewable, Cuckoo.ProtocolMock {
     typealias MocksType = HomePresenterViewable
     typealias Stubbing = __StubbingProxy_HomePresenterViewable
     typealias Verification = __VerificationProxy_HomePresenterViewable

    private var __defaultImplStub: HomePresenterViewable?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: HomePresenterViewable) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func showOnSuccess(with showcaseApps: [ShowcaseAppViewModel])  {
        
            return cuckoo_manager.call("showOnSuccess(with: [ShowcaseAppViewModel])",
                parameters: (showcaseApps),
                escapingParameters: (showcaseApps),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.showOnSuccess(with: showcaseApps))
        
    }
    
    
    
     func showOnFailure(with error: DatabaseError)  {
        
            return cuckoo_manager.call("showOnFailure(with: DatabaseError)",
                parameters: (error),
                escapingParameters: (error),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.showOnFailure(with: error))
        
    }
    
    
    
     func startLoadingAnimation()  {
        
            return cuckoo_manager.call("startLoadingAnimation()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.startLoadingAnimation())
        
    }
    
    
    
     func stopLoadingAnimation()  {
        
            return cuckoo_manager.call("stopLoadingAnimation()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.stopLoadingAnimation())
        
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
	    
	    func startLoadingAnimation() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockHomePresenterViewable.self, method: "startLoadingAnimation()", parameterMatchers: matchers))
	    }
	    
	    func stopLoadingAnimation() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockHomePresenterViewable.self, method: "stopLoadingAnimation()", parameterMatchers: matchers))
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
	    
	    @discardableResult
	    func startLoadingAnimation() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("startLoadingAnimation()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func stopLoadingAnimation() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("stopLoadingAnimation()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
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
    
     func startLoadingAnimation()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func stopLoadingAnimation()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Firebase/Analytics/AnalyticsManager.swift at 2019-04-01 10:11:01 +0000


import Cuckoo
@testable import Showcase_iOS

import FirebaseAnalytics
import Foundation


 class MockAnalyticsManager: AnalyticsManager, Cuckoo.ProtocolMock {
     typealias MocksType = AnalyticsManager
     typealias Stubbing = __StubbingProxy_AnalyticsManager
     typealias Verification = __VerificationProxy_AnalyticsManager

    private var __defaultImplStub: AnalyticsManager?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: AnalyticsManager) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func trackButtonTap(buttonName: String)  {
        
            return cuckoo_manager.call("trackButtonTap(buttonName: String)",
                parameters: (buttonName),
                escapingParameters: (buttonName),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.trackButtonTap(buttonName: buttonName))
        
    }
    
    
    
     func trackSelectionOfApplication(applicationName: String)  {
        
            return cuckoo_manager.call("trackSelectionOfApplication(applicationName: String)",
                parameters: (applicationName),
                escapingParameters: (applicationName),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.trackSelectionOfApplication(applicationName: applicationName))
        
    }
    
    
    
     func trackScreenAppear(screenName: String)  {
        
            return cuckoo_manager.call("trackScreenAppear(screenName: String)",
                parameters: (screenName),
                escapingParameters: (screenName),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.trackScreenAppear(screenName: screenName))
        
    }
    
    
    
     func trackGenericEvent(eventName: String)  {
        
            return cuckoo_manager.call("trackGenericEvent(eventName: String)",
                parameters: (eventName),
                escapingParameters: (eventName),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.trackGenericEvent(eventName: eventName))
        
    }
    

	 struct __StubbingProxy_AnalyticsManager: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func trackButtonTap<M1: Cuckoo.Matchable>(buttonName: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: buttonName) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAnalyticsManager.self, method: "trackButtonTap(buttonName: String)", parameterMatchers: matchers))
	    }
	    
	    func trackSelectionOfApplication<M1: Cuckoo.Matchable>(applicationName: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: applicationName) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAnalyticsManager.self, method: "trackSelectionOfApplication(applicationName: String)", parameterMatchers: matchers))
	    }
	    
	    func trackScreenAppear<M1: Cuckoo.Matchable>(screenName: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: screenName) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAnalyticsManager.self, method: "trackScreenAppear(screenName: String)", parameterMatchers: matchers))
	    }
	    
	    func trackGenericEvent<M1: Cuckoo.Matchable>(eventName: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: eventName) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAnalyticsManager.self, method: "trackGenericEvent(eventName: String)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_AnalyticsManager: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func trackButtonTap<M1: Cuckoo.Matchable>(buttonName: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: buttonName) { $0 }]
	        return cuckoo_manager.verify("trackButtonTap(buttonName: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func trackSelectionOfApplication<M1: Cuckoo.Matchable>(applicationName: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: applicationName) { $0 }]
	        return cuckoo_manager.verify("trackSelectionOfApplication(applicationName: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func trackScreenAppear<M1: Cuckoo.Matchable>(screenName: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: screenName) { $0 }]
	        return cuckoo_manager.verify("trackScreenAppear(screenName: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func trackGenericEvent<M1: Cuckoo.Matchable>(eventName: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: eventName) { $0 }]
	        return cuckoo_manager.verify("trackGenericEvent(eventName: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class AnalyticsManagerStub: AnalyticsManager {
    

    

    
     func trackButtonTap(buttonName: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func trackSelectionOfApplication(applicationName: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func trackScreenAppear(screenName: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func trackGenericEvent(eventName: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Firebase/Service/DataReferenceable.swift at 2019-04-01 10:11:01 +0000


import Cuckoo
@testable import Showcase_iOS

import Firebase
import FirebaseDatabase
import Foundation


 class MockDataReferenceable: DataReferenceable, Cuckoo.ProtocolMock {
     typealias MocksType = DataReferenceable
     typealias Stubbing = __StubbingProxy_DataReferenceable
     typealias Verification = __VerificationProxy_DataReferenceable

    private var __defaultImplStub: DataReferenceable?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: DataReferenceable) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func databaseReference()  -> DataReferenceable? {
        
            return cuckoo_manager.call("databaseReference() -> DataReferenceable?",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.databaseReference())
        
    }
    
    
    
     func child(_ path: Path)  -> DataReferenceable? {
        
            return cuckoo_manager.call("child(_: Path) -> DataReferenceable?",
                parameters: (path),
                escapingParameters: (path),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.child(path))
        
    }
    
    
    
     func observe(eventType: DataEventType, with snapshot: @escaping (DataSnapshotProtocol) -> Void, withCancel cancel: @escaping (Error) -> Void)  {
        
            return cuckoo_manager.call("observe(eventType: DataEventType, with: @escaping (DataSnapshotProtocol) -> Void, withCancel: @escaping (Error) -> Void)",
                parameters: (eventType, snapshot, cancel),
                escapingParameters: (eventType, snapshot, cancel),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.observe(eventType: eventType, with: snapshot, withCancel: cancel))
        
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


// MARK: - Mocks generated from file: Showcase-iOS/Firebase/Service/DataSnapshotProtocol.swift at 2019-04-01 10:11:01 +0000

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

    private var __defaultImplStub: DataSnapshotProtocol?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: DataSnapshotProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    
    
    
     var value: Any? {
        get {
            return cuckoo_manager.getter("value",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.value)
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


// MARK: - Mocks generated from file: Showcase-iOS/Firebase/Storage/FIRStoring.swift at 2019-04-01 10:11:01 +0000


import Cuckoo
@testable import Showcase_iOS

import FirebaseStorage
import Foundation


 class MockFIRStoring: FIRStoring, Cuckoo.ProtocolMock {
     typealias MocksType = FIRStoring
     typealias Stubbing = __StubbingProxy_FIRStoring
     typealias Verification = __VerificationProxy_FIRStoring

    private var __defaultImplStub: FIRStoring?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: FIRStoring) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func storageReference()  -> StorageReferenceable? {
        
            return cuckoo_manager.call("storageReference() -> StorageReferenceable?",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.storageReference())
        
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


// MARK: - Mocks generated from file: Showcase-iOS/Firebase/Storage/StorageReferenceable.swift at 2019-04-01 10:11:01 +0000


import Cuckoo
@testable import Showcase_iOS

import FirebaseStorage
import Foundation


 class MockStorageReferenceable: StorageReferenceable, Cuckoo.ProtocolMock {
     typealias MocksType = StorageReferenceable
     typealias Stubbing = __StubbingProxy_StorageReferenceable
     typealias Verification = __VerificationProxy_StorageReferenceable

    private var __defaultImplStub: StorageReferenceable?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: StorageReferenceable) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func child(from path: String)  -> StorageReferenceable {
        
            return cuckoo_manager.call("child(from: String) -> StorageReferenceable",
                parameters: (path),
                escapingParameters: (path),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.child(from: path))
        
    }
    
    
    
     func downloadImageUrl(completion: @escaping (URL?, Error?) -> Void)  {
        
            return cuckoo_manager.call("downloadImageUrl(completion: @escaping (URL?, Error?) -> Void)",
                parameters: (completion),
                escapingParameters: (completion),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.downloadImageUrl(completion: completion))
        
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


// MARK: - Mocks generated from file: Showcase-iOS/Login/Interactor/LoginPresenterInteractable.swift at 2019-04-01 10:11:01 +0000

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

    private var __defaultImplStub: LoginPresenterInteractable?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: LoginPresenterInteractable) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    
    
    
     var loginPresenter: LoginInteractorPresentable? {
        get {
            return cuckoo_manager.getter("loginPresenter",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.loginPresenter)
        }
        
        set {
            cuckoo_manager.setter("loginPresenter",
                value: newValue,
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.loginPresenter = newValue)
        }
        
    }
    
    
    
     var userAuthenticator: LoginAuthenticating? {
        get {
            return cuckoo_manager.getter("userAuthenticator",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.userAuthenticator)
        }
        
        set {
            cuckoo_manager.setter("userAuthenticator",
                value: newValue,
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.userAuthenticator = newValue)
        }
        
    }
    

    

    
    
    
     func signIn(withEmail email: String, password: String)  {
        
            return cuckoo_manager.call("signIn(withEmail: String, password: String)",
                parameters: (email, password),
                escapingParameters: (email, password),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.signIn(withEmail: email, password: password))
        
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


// MARK: - Mocks generated from file: Showcase-iOS/Login/Presenter/LoginInteractorPresentable.swift at 2019-04-01 10:11:01 +0000

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

    private var __defaultImplStub: LoginInteractorPresentable?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: LoginInteractorPresentable) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func signedInSuccessfully()  {
        
            return cuckoo_manager.call("signedInSuccessfully()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.signedInSuccessfully())
        
    }
    
    
    
     func failedToSign(withError error: Error)  {
        
            return cuckoo_manager.call("failedToSign(withError: Error)",
                parameters: (error),
                escapingParameters: (error),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.failedToSign(withError: error))
        
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


// MARK: - Mocks generated from file: Showcase-iOS/Login/Presenter/UserDefaultsProtocol.swift at 2019-04-01 10:11:01 +0000

//
//  UserDefaultsProtocol.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/23.
//  Copyright © 2018 DVT. All rights reserved.
//

import Cuckoo
@testable import Showcase_iOS

import Foundation


 class MockUserDefaultsProtocol: UserDefaultsProtocol, Cuckoo.ProtocolMock {
     typealias MocksType = UserDefaultsProtocol
     typealias Stubbing = __StubbingProxy_UserDefaultsProtocol
     typealias Verification = __VerificationProxy_UserDefaultsProtocol

    private var __defaultImplStub: UserDefaultsProtocol?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: UserDefaultsProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func bool(forKey key: String)  -> Bool {
        
            return cuckoo_manager.call("bool(forKey: String) -> Bool",
                parameters: (key),
                escapingParameters: (key),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.bool(forKey: key))
        
    }
    
    
    
     func set(value: Bool, forKey key: String)  {
        
            return cuckoo_manager.call("set(value: Bool, forKey: String)",
                parameters: (value, key),
                escapingParameters: (value, key),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.set(value: value, forKey: key))
        
    }
    

	 struct __StubbingProxy_UserDefaultsProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func bool<M1: Cuckoo.Matchable>(forKey key: M1) -> Cuckoo.ProtocolStubFunction<(String), Bool> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: key) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockUserDefaultsProtocol.self, method: "bool(forKey: String) -> Bool", parameterMatchers: matchers))
	    }
	    
	    func set<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(value: M1, forKey key: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(Bool, String)> where M1.MatchedType == Bool, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool, String)>] = [wrap(matchable: value) { $0.0 }, wrap(matchable: key) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockUserDefaultsProtocol.self, method: "set(value: Bool, forKey: String)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_UserDefaultsProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func bool<M1: Cuckoo.Matchable>(forKey key: M1) -> Cuckoo.__DoNotUse<Bool> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: key) { $0 }]
	        return cuckoo_manager.verify("bool(forKey: String) -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func set<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(value: M1, forKey key: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Bool, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool, String)>] = [wrap(matchable: value) { $0.0 }, wrap(matchable: key) { $0.1 }]
	        return cuckoo_manager.verify("set(value: Bool, forKey: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class UserDefaultsProtocolStub: UserDefaultsProtocol {
    

    

    
     func bool(forKey key: String)  -> Bool {
        return DefaultValueRegistry.defaultValue(for: Bool.self)
    }
    
     func set(value: Bool, forKey key: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Login/Service/AuthDataResultProtocol.swift at 2019-04-01 10:11:01 +0000

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

    private var __defaultImplStub: AuthDataResultProtocol?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: AuthDataResultProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    
    
    
     var user: FirUserProtocol {
        get {
            return cuckoo_manager.getter("user",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.user)
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


// MARK: - Mocks generated from file: Showcase-iOS/Login/Service/FirebaseLoginAuthenticating.swift at 2019-04-01 10:11:01 +0000

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

    private var __defaultImplStub: FirebaseLoginAuthenticating?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: FirebaseLoginAuthenticating) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func signIn(withEmail email: String, password: String, completion: @escaping (AuthDataResultProtocol?, Error?) -> Void)  {
        
            return cuckoo_manager.call("signIn(withEmail: String, password: String, completion: @escaping (AuthDataResultProtocol?, Error?) -> Void)",
                parameters: (email, password, completion),
                escapingParameters: (email, password, completion),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.signIn(withEmail: email, password: password, completion: completion))
        
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


// MARK: - Mocks generated from file: Showcase-iOS/Login/Service/LoginAuthenticating.swift at 2019-04-01 10:11:01 +0000

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

    private var __defaultImplStub: LoginAuthenticating?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: LoginAuthenticating) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func signIn(withEmail email: String, password: String, completion: @escaping (AuthDataResultProtocol?, Error?) -> Void)  {
        
            return cuckoo_manager.call("signIn(withEmail: String, password: String, completion: @escaping (AuthDataResultProtocol?, Error?) -> Void)",
                parameters: (email, password, completion),
                escapingParameters: (email, password, completion),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.signIn(withEmail: email, password: password, completion: completion))
        
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


// MARK: - Mocks generated from file: Showcase-iOS/Login/View/Extensions/KeyBoardDelegate.swift at 2019-04-01 10:11:01 +0000

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


 class MockKeyBoardDelegate: KeyBoardDelegate, Cuckoo.ProtocolMock {
     typealias MocksType = KeyBoardDelegate
     typealias Stubbing = __StubbingProxy_KeyBoardDelegate
     typealias Verification = __VerificationProxy_KeyBoardDelegate

    private var __defaultImplStub: KeyBoardDelegate?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: KeyBoardDelegate) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func keyBoardDidShow(_ notification: Notification)  {
        
            return cuckoo_manager.call("keyBoardDidShow(_: Notification)",
                parameters: (notification),
                escapingParameters: (notification),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.keyBoardDidShow(notification))
        
    }
    
    
    
     func keyBoardDidHide(_ notification: Notification)  {
        
            return cuckoo_manager.call("keyBoardDidHide(_: Notification)",
                parameters: (notification),
                escapingParameters: (notification),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.keyBoardDidHide(notification))
        
    }
    
    
    
     func hideKeyboardWhenViewTapped()  {
        
            return cuckoo_manager.call("hideKeyboardWhenViewTapped()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.hideKeyboardWhenViewTapped())
        
    }
    
    
    
     func hideKeyboard(for textField: UITextField)  {
        
            return cuckoo_manager.call("hideKeyboard(for: UITextField)",
                parameters: (textField),
                escapingParameters: (textField),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.hideKeyboard(for: textField))
        
    }
    
    
    
     func hideKeyboardWhenTappedAround()  {
        
            return cuckoo_manager.call("hideKeyboardWhenTappedAround()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.hideKeyboardWhenTappedAround())
        
    }
    
    
    
     func updateScrollViewContentInset(_ contentInset: UIEdgeInsets)  {
        
            return cuckoo_manager.call("updateScrollViewContentInset(_: UIEdgeInsets)",
                parameters: (contentInset),
                escapingParameters: (contentInset),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.updateScrollViewContentInset(contentInset))
        
    }
    
    
    
     func updateContentInset(keyBoardHeight height: CGFloat)  -> UIEdgeInsets {
        
            return cuckoo_manager.call("updateContentInset(keyBoardHeight: CGFloat) -> UIEdgeInsets",
                parameters: (height),
                escapingParameters: (height),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.updateContentInset(keyBoardHeight: height))
        
    }
    

	 struct __StubbingProxy_KeyBoardDelegate: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func keyBoardDidShow<M1: Cuckoo.Matchable>(_ notification: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Notification)> where M1.MatchedType == Notification {
	        let matchers: [Cuckoo.ParameterMatcher<(Notification)>] = [wrap(matchable: notification) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockKeyBoardDelegate.self, method: "keyBoardDidShow(_: Notification)", parameterMatchers: matchers))
	    }
	    
	    func keyBoardDidHide<M1: Cuckoo.Matchable>(_ notification: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Notification)> where M1.MatchedType == Notification {
	        let matchers: [Cuckoo.ParameterMatcher<(Notification)>] = [wrap(matchable: notification) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockKeyBoardDelegate.self, method: "keyBoardDidHide(_: Notification)", parameterMatchers: matchers))
	    }
	    
	    func hideKeyboardWhenViewTapped() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockKeyBoardDelegate.self, method: "hideKeyboardWhenViewTapped()", parameterMatchers: matchers))
	    }
	    
	    func hideKeyboard<M1: Cuckoo.Matchable>(for textField: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(UITextField)> where M1.MatchedType == UITextField {
	        let matchers: [Cuckoo.ParameterMatcher<(UITextField)>] = [wrap(matchable: textField) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockKeyBoardDelegate.self, method: "hideKeyboard(for: UITextField)", parameterMatchers: matchers))
	    }
	    
	    func hideKeyboardWhenTappedAround() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockKeyBoardDelegate.self, method: "hideKeyboardWhenTappedAround()", parameterMatchers: matchers))
	    }
	    
	    func updateScrollViewContentInset<M1: Cuckoo.Matchable>(_ contentInset: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(UIEdgeInsets)> where M1.MatchedType == UIEdgeInsets {
	        let matchers: [Cuckoo.ParameterMatcher<(UIEdgeInsets)>] = [wrap(matchable: contentInset) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockKeyBoardDelegate.self, method: "updateScrollViewContentInset(_: UIEdgeInsets)", parameterMatchers: matchers))
	    }
	    
	    func updateContentInset<M1: Cuckoo.Matchable>(keyBoardHeight height: M1) -> Cuckoo.ProtocolStubFunction<(CGFloat), UIEdgeInsets> where M1.MatchedType == CGFloat {
	        let matchers: [Cuckoo.ParameterMatcher<(CGFloat)>] = [wrap(matchable: height) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockKeyBoardDelegate.self, method: "updateContentInset(keyBoardHeight: CGFloat) -> UIEdgeInsets", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_KeyBoardDelegate: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func keyBoardDidShow<M1: Cuckoo.Matchable>(_ notification: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Notification {
	        let matchers: [Cuckoo.ParameterMatcher<(Notification)>] = [wrap(matchable: notification) { $0 }]
	        return cuckoo_manager.verify("keyBoardDidShow(_: Notification)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func keyBoardDidHide<M1: Cuckoo.Matchable>(_ notification: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Notification {
	        let matchers: [Cuckoo.ParameterMatcher<(Notification)>] = [wrap(matchable: notification) { $0 }]
	        return cuckoo_manager.verify("keyBoardDidHide(_: Notification)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func hideKeyboardWhenViewTapped() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("hideKeyboardWhenViewTapped()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func hideKeyboard<M1: Cuckoo.Matchable>(for textField: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == UITextField {
	        let matchers: [Cuckoo.ParameterMatcher<(UITextField)>] = [wrap(matchable: textField) { $0 }]
	        return cuckoo_manager.verify("hideKeyboard(for: UITextField)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func hideKeyboardWhenTappedAround() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("hideKeyboardWhenTappedAround()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func updateScrollViewContentInset<M1: Cuckoo.Matchable>(_ contentInset: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == UIEdgeInsets {
	        let matchers: [Cuckoo.ParameterMatcher<(UIEdgeInsets)>] = [wrap(matchable: contentInset) { $0 }]
	        return cuckoo_manager.verify("updateScrollViewContentInset(_: UIEdgeInsets)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func updateContentInset<M1: Cuckoo.Matchable>(keyBoardHeight height: M1) -> Cuckoo.__DoNotUse<UIEdgeInsets> where M1.MatchedType == CGFloat {
	        let matchers: [Cuckoo.ParameterMatcher<(CGFloat)>] = [wrap(matchable: height) { $0 }]
	        return cuckoo_manager.verify("updateContentInset(keyBoardHeight: CGFloat) -> UIEdgeInsets", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class KeyBoardDelegateStub: KeyBoardDelegate {
    

    

    
     func keyBoardDidShow(_ notification: Notification)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func keyBoardDidHide(_ notification: Notification)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func hideKeyboardWhenViewTapped()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func hideKeyboard(for textField: UITextField)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func hideKeyboardWhenTappedAround()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func updateScrollViewContentInset(_ contentInset: UIEdgeInsets)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func updateContentInset(keyBoardHeight height: CGFloat)  -> UIEdgeInsets {
        return DefaultValueRegistry.defaultValue(for: UIEdgeInsets.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Login/View/Extensions/KeyboardObservable.swift at 2019-04-01 10:11:01 +0000

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

    private var __defaultImplStub: KeyboardObservable?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: KeyboardObservable) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func addObservers()  {
        
            return cuckoo_manager.call("addObservers()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.addObservers())
        
    }
    
    
    
     func removeObservers()  {
        
            return cuckoo_manager.call("removeObservers()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.removeObservers())
        
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


// MARK: - Mocks generated from file: Showcase-iOS/Login/View/Extensions/NotificationCenterDelegate.swift at 2019-04-01 10:11:01 +0000

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

    private var __defaultImplStub: NotificationCenterDelegate?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: NotificationCenterDelegate) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func removeObserver(_ observer: Any)  {
        
            return cuckoo_manager.call("removeObserver(_: Any)",
                parameters: (observer),
                escapingParameters: (observer),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.removeObserver(observer))
        
    }
    
    
    
     func addObserver(_ observer: Any, selector: Selector, name: NSNotification.Name?, object: Any?)  {
        
            return cuckoo_manager.call("addObserver(_: Any, selector: Selector, name: NSNotification.Name?, object: Any?)",
                parameters: (observer, selector, name, object),
                escapingParameters: (observer, selector, name, object),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.addObserver(observer, selector: selector, name: name, object: object))
        
    }
    
    
    
     func post(_ notification: Notification)  {
        
            return cuckoo_manager.call("post(_: Notification)",
                parameters: (notification),
                escapingParameters: (notification),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.post(notification))
        
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


// MARK: - Mocks generated from file: Showcase-iOS/Login/View/LoginPresenterViewable.swift at 2019-04-01 10:11:01 +0000

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

    private var __defaultImplStub: LoginPresenterViewable?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: LoginPresenterViewable) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    
    
    
     var loginPresenter: LoginPresentable? {
        get {
            return cuckoo_manager.getter("loginPresenter",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.loginPresenter)
        }
        
        set {
            cuckoo_manager.setter("loginPresenter",
                value: newValue,
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.loginPresenter = newValue)
        }
        
    }
    

    

    
    
    
     func showEmailValidationFailure(withError error: AuthenticationError)  {
        
            return cuckoo_manager.call("showEmailValidationFailure(withError: AuthenticationError)",
                parameters: (error),
                escapingParameters: (error),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.showEmailValidationFailure(withError: error))
        
    }
    
    
    
     func showPasswordValidationFailure(withError error: AuthenticationError)  {
        
            return cuckoo_manager.call("showPasswordValidationFailure(withError: AuthenticationError)",
                parameters: (error),
                escapingParameters: (error),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.showPasswordValidationFailure(withError: error))
        
    }
    
    
    
     func showInvalidInputsFailure(withError error: AuthenticationError)  {
        
            return cuckoo_manager.call("showInvalidInputsFailure(withError: AuthenticationError)",
                parameters: (error),
                escapingParameters: (error),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.showInvalidInputsFailure(withError: error))
        
    }
    
    
    
     func showAuthenticationFailure(withMessage message: String?)  {
        
            return cuckoo_manager.call("showAuthenticationFailure(withMessage: String?)",
                parameters: (message),
                escapingParameters: (message),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.showAuthenticationFailure(withMessage: message))
        
    }
    
    
    
     func startLoadingAnimation()  {
        
            return cuckoo_manager.call("startLoadingAnimation()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.startLoadingAnimation())
        
    }
    
    
    
     func stopLoadingAnimation()  {
        
            return cuckoo_manager.call("stopLoadingAnimation()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.stopLoadingAnimation())
        
    }
    
    
    
     func showSuccess()  {
        
            return cuckoo_manager.call("showSuccess()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.showSuccess())
        
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
	    
	    func startLoadingAnimation() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockLoginPresenterViewable.self, method: "startLoadingAnimation()", parameterMatchers: matchers))
	    }
	    
	    func stopLoadingAnimation() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockLoginPresenterViewable.self, method: "stopLoadingAnimation()", parameterMatchers: matchers))
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
	    func startLoadingAnimation() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("startLoadingAnimation()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func stopLoadingAnimation() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("stopLoadingAnimation()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
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
    
     func startLoadingAnimation()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func stopLoadingAnimation()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func showSuccess()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Logout/Interactor/SignOutInteractor.swift at 2019-04-01 10:11:01 +0000

//
//  SignOutInteractor.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/31.
//  Copyright © 2018 DVT. All rights reserved.
//

import Cuckoo
@testable import Showcase_iOS

import FirebaseAuth
import Foundation


 class MockSignOutInteractor: SignOutInteractor, Cuckoo.ClassMock {
     typealias MocksType = SignOutInteractor
     typealias Stubbing = __StubbingProxy_SignOutInteractor
     typealias Verification = __VerificationProxy_SignOutInteractor

    private var __defaultImplStub: SignOutInteractor?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

     func enableDefaultImplementation(_ stub: SignOutInteractor) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    
    
    
     override var userSignOut: UserSignOut? {
        get {
            return cuckoo_manager.getter("userSignOut",
                superclassCall:
                    
                    super.userSignOut
                    ,
                defaultCall: __defaultImplStub!.userSignOut)
        }
        
        set {
            cuckoo_manager.setter("userSignOut",
                value: newValue,
                superclassCall:
                    
                    super.userSignOut = newValue
                    ,
                defaultCall: __defaultImplStub!.userSignOut = newValue)
        }
        
    }
    
    
    
     override var homePresenter: HomePresentable? {
        get {
            return cuckoo_manager.getter("homePresenter",
                superclassCall:
                    
                    super.homePresenter
                    ,
                defaultCall: __defaultImplStub!.homePresenter)
        }
        
        set {
            cuckoo_manager.setter("homePresenter",
                value: newValue,
                superclassCall:
                    
                    super.homePresenter = newValue
                    ,
                defaultCall: __defaultImplStub!.homePresenter = newValue)
        }
        
    }
    

    

    
    
    
     override func signOut()  {
        
            return cuckoo_manager.call("signOut()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    super.signOut()
                    ,
                defaultCall: __defaultImplStub!.signOut())
        
    }
    

	 struct __StubbingProxy_SignOutInteractor: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    var userSignOut: Cuckoo.ClassToBeStubbedProperty<MockSignOutInteractor, UserSignOut?> {
	        return .init(manager: cuckoo_manager, name: "userSignOut")
	    }
	    
	    var homePresenter: Cuckoo.ClassToBeStubbedProperty<MockSignOutInteractor, HomePresentable?> {
	        return .init(manager: cuckoo_manager, name: "homePresenter")
	    }
	    
	    
	    func signOut() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockSignOutInteractor.self, method: "signOut()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SignOutInteractor: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    var userSignOut: Cuckoo.VerifyProperty<UserSignOut?> {
	        return .init(manager: cuckoo_manager, name: "userSignOut", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var homePresenter: Cuckoo.VerifyProperty<HomePresentable?> {
	        return .init(manager: cuckoo_manager, name: "homePresenter", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func signOut() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("signOut()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class SignOutInteractorStub: SignOutInteractor {
    
     override var userSignOut: UserSignOut? {
        get {
            return DefaultValueRegistry.defaultValue(for: (UserSignOut?).self)
        }
        
        set { }
        
    }
    
     override var homePresenter: HomePresentable? {
        get {
            return DefaultValueRegistry.defaultValue(for: (HomePresentable?).self)
        }
        
        set { }
        
    }
    

    

    
     override func signOut()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Logout/Service/FirebaseSignOut.swift at 2019-04-01 10:11:01 +0000

//
//  FirebaseSignOut.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/31.
//  Copyright © 2018 DVT. All rights reserved.
//

import Cuckoo
@testable import Showcase_iOS

import Foundation


 class MockFirebaseSignOut: FirebaseSignOut, Cuckoo.ProtocolMock {
     typealias MocksType = FirebaseSignOut
     typealias Stubbing = __StubbingProxy_FirebaseSignOut
     typealias Verification = __VerificationProxy_FirebaseSignOut

    private var __defaultImplStub: FirebaseSignOut?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: FirebaseSignOut) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func signOut()  throws {
        
            return try cuckoo_manager.callThrows("signOut() throws",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.signOut())
        
    }
    

	 struct __StubbingProxy_FirebaseSignOut: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func signOut() -> Cuckoo.ProtocolStubNoReturnThrowingFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockFirebaseSignOut.self, method: "signOut() throws", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_FirebaseSignOut: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func signOut() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("signOut() throws", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class FirebaseSignOutStub: FirebaseSignOut {
    

    

    
     func signOut()  throws {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Logout/Service/UserSignOut.swift at 2019-04-01 10:11:01 +0000

//
//  UserSignOut.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/31.
//  Copyright © 2018 DVT. All rights reserved.
//

import Cuckoo
@testable import Showcase_iOS

import Foundation


 class MockUserSignOut: UserSignOut, Cuckoo.ProtocolMock {
     typealias MocksType = UserSignOut
     typealias Stubbing = __StubbingProxy_UserSignOut
     typealias Verification = __VerificationProxy_UserSignOut

    private var __defaultImplStub: UserSignOut?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: UserSignOut) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func signOut()  throws {
        
            return try cuckoo_manager.callThrows("signOut() throws",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.signOut())
        
    }
    

	 struct __StubbingProxy_UserSignOut: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func signOut() -> Cuckoo.ProtocolStubNoReturnThrowingFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockUserSignOut.self, method: "signOut() throws", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_UserSignOut: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func signOut() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("signOut() throws", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class UserSignOutStub: UserSignOut {
    

    

    
     func signOut()  throws {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Router/WireframeDelegate.swift at 2019-04-01 10:11:01 +0000

//
//  WireframeDelegate.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/25.
//  Copyright © 2018 DVT. All rights reserved.
//

import Cuckoo
@testable import Showcase_iOS

import Foundation
import UIKit


 class MockWireframeDelegate: WireframeDelegate, Cuckoo.ProtocolMock {
     typealias MocksType = WireframeDelegate
     typealias Stubbing = __StubbingProxy_WireframeDelegate
     typealias Verification = __VerificationProxy_WireframeDelegate

    private var __defaultImplStub: WireframeDelegate?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: WireframeDelegate) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func transitionToShowcaseAppDetailView(_ controller: HomeViewController, with showcaseAppViewModel: ShowcaseAppViewModel)  {
        
            return cuckoo_manager.call("transitionToShowcaseAppDetailView(_: HomeViewController, with: ShowcaseAppViewModel)",
                parameters: (controller, showcaseAppViewModel),
                escapingParameters: (controller, showcaseAppViewModel),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.transitionToShowcaseAppDetailView(controller, with: showcaseAppViewModel))
        
    }
    
    
    
     func transitionToLoginView(_ controller: HomeViewController)  {
        
            return cuckoo_manager.call("transitionToLoginView(_: HomeViewController)",
                parameters: (controller),
                escapingParameters: (controller),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.transitionToLoginView(controller))
        
    }
    
    
    
     func transitionToMailComposer(_ controller: LoginViewController)  {
        
            return cuckoo_manager.call("transitionToMailComposer(_: LoginViewController)",
                parameters: (controller),
                escapingParameters: (controller),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.transitionToMailComposer(controller))
        
    }
    

	 struct __StubbingProxy_WireframeDelegate: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func transitionToShowcaseAppDetailView<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ controller: M1, with showcaseAppViewModel: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(HomeViewController, ShowcaseAppViewModel)> where M1.MatchedType == HomeViewController, M2.MatchedType == ShowcaseAppViewModel {
	        let matchers: [Cuckoo.ParameterMatcher<(HomeViewController, ShowcaseAppViewModel)>] = [wrap(matchable: controller) { $0.0 }, wrap(matchable: showcaseAppViewModel) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockWireframeDelegate.self, method: "transitionToShowcaseAppDetailView(_: HomeViewController, with: ShowcaseAppViewModel)", parameterMatchers: matchers))
	    }
	    
	    func transitionToLoginView<M1: Cuckoo.Matchable>(_ controller: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(HomeViewController)> where M1.MatchedType == HomeViewController {
	        let matchers: [Cuckoo.ParameterMatcher<(HomeViewController)>] = [wrap(matchable: controller) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockWireframeDelegate.self, method: "transitionToLoginView(_: HomeViewController)", parameterMatchers: matchers))
	    }
	    
	    func transitionToMailComposer<M1: Cuckoo.Matchable>(_ controller: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(LoginViewController)> where M1.MatchedType == LoginViewController {
	        let matchers: [Cuckoo.ParameterMatcher<(LoginViewController)>] = [wrap(matchable: controller) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockWireframeDelegate.self, method: "transitionToMailComposer(_: LoginViewController)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_WireframeDelegate: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func transitionToShowcaseAppDetailView<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ controller: M1, with showcaseAppViewModel: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == HomeViewController, M2.MatchedType == ShowcaseAppViewModel {
	        let matchers: [Cuckoo.ParameterMatcher<(HomeViewController, ShowcaseAppViewModel)>] = [wrap(matchable: controller) { $0.0 }, wrap(matchable: showcaseAppViewModel) { $0.1 }]
	        return cuckoo_manager.verify("transitionToShowcaseAppDetailView(_: HomeViewController, with: ShowcaseAppViewModel)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func transitionToLoginView<M1: Cuckoo.Matchable>(_ controller: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == HomeViewController {
	        let matchers: [Cuckoo.ParameterMatcher<(HomeViewController)>] = [wrap(matchable: controller) { $0 }]
	        return cuckoo_manager.verify("transitionToLoginView(_: HomeViewController)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func transitionToMailComposer<M1: Cuckoo.Matchable>(_ controller: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == LoginViewController {
	        let matchers: [Cuckoo.ParameterMatcher<(LoginViewController)>] = [wrap(matchable: controller) { $0 }]
	        return cuckoo_manager.verify("transitionToMailComposer(_: LoginViewController)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class WireframeDelegateStub: WireframeDelegate {
    

    

    
     func transitionToShowcaseAppDetailView(_ controller: HomeViewController, with showcaseAppViewModel: ShowcaseAppViewModel)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func transitionToLoginView(_ controller: HomeViewController)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func transitionToMailComposer(_ controller: LoginViewController)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Showcase-iOS/Viewable.swift at 2019-04-01 10:11:01 +0000

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

    private var __defaultImplStub: Viewable?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: Viewable) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    

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

