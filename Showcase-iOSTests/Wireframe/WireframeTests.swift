//
//  WireframeTests.swift
//  Showcase-iOSTests
//
//  Created by Edward Mtshweni on 2018/05/28.
//  Copyright © 2018 DVT. All rights reserved.
//

import XCTest
import Cuckoo
@testable import Showcase_iOS

class WireframeTests: XCTestCase {
    
    let mockWireframe = MockWireframeDelegate()
    var systemUnderTest: WireframeDelegate?
    var mockShowcaseAppViewModel: ShowcaseAppViewModel!
    var controller = HomeViewController()
    
    override func setUp() {
        super.setUp()
        let showcaseApp = ShowcaseApp(with: setupMockShowcaseAppDictionary())
        self.mockShowcaseAppViewModel = ShowcaseAppViewModel(with: showcaseApp)
        let dependancyContainer = DependencyContainer.container()
        self.systemUnderTest = dependancyContainer.resolve(WireframeDelegate.self)
    }
    
    func testThatTransitionToShowcaseAppDetailViewFailsOnAnInvalidStoryboard() {
        self.systemUnderTest?.transitionToShowcaseAppDetailView(self.controller, with: self.mockShowcaseAppViewModel)
    }
    
    func testThatTransitionToShowcaseAppDetailViewSucceedsOnAValidStoryboard() {
        self.controller = HomeViewController.instantiate(fromAppStoryboard: .Home)
        self.systemUnderTest?.transitionToShowcaseAppDetailView(self.controller, with: self.mockShowcaseAppViewModel)
    }
    
    func setupMockShowcaseAppDictionary() -> [String: Any] {
        var dictionary = [String: Any]()
        dictionary["client"] = "Group Five"
        dictionary["functionality"] = "Asset data capture on Windows Mobile devices."
        dictionary["iconUrl"] = "app-images/group-five/group_five_logo.jpg"
        dictionary["id"] = "group-five"
        dictionary["industry"] = "Asset Management"
        dictionary["shortDescription"] = "Asset data capturing application"
        dictionary["technologyUsed"] = "Windows Phone \n.NET Development "
        dictionary["screenshots"] = ["app-images/dvt-showcase/about.png", "app-images/dvt-showcase/app_detail_dstv.png"]
        return dictionary
    }
}
