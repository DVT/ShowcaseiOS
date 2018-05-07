//
//  ShowcaseAppViewModelTests.swift
//  Showcase-iOSTests
//
//  Created by Edward Mtshweni on 2018/05/04.
//  Copyright © 2018 DVT. All rights reserved.
//

import XCTest
import Cuckoo
@testable import Showcase_iOS

class ShowcaseAppViewModelTests: XCTestCase {
    var mockShowcaseAppViewModel: ShowcaseAppViewModel!
    var mockEmptyShowcaseAppViewModel: ShowcaseAppViewModel!
    
    override func setUp() {
        super.setUp()
        self.mockShowcaseAppViewModel = ShowcaseAppViewModel(with: ShowcaseApp(with: self.setupShowcaseAppDictionary()))
        self.mockEmptyShowcaseAppViewModel = ShowcaseAppViewModel(with: ShowcaseApp(with: [String: Any]()))
    }
    
    func testThatGivenADictionaryWhenInstantiatingAShowcaseAppViewModelThenAShowcaseAppViewModelShouldNotBeNil() {
        XCTAssertNotNil(self.mockShowcaseAppViewModel)
    }
    
    func testThatGivenADictionaryThenAShowcaseAppViewModelClientFieldShoulHaveAValue() {
        XCTAssertEqual(self.mockShowcaseAppViewModel.client, "Group Five")
    }
    
    func testThatGivenADictionaryThenAShowcaseAppViewModelFunctionalityFieldShoulHaveAValue() {
        XCTAssertEqual(self.mockShowcaseAppViewModel.functionality, "Asset data capture on Windows Mobile devices.")
    }
    
    func testThatGivenADictionaryThenAShowcaseAppViewModelIconUrlFieldShoulHaveAValue() {
        XCTAssertEqual(self.mockShowcaseAppViewModel.iconUrl, "app-images/group-five/group_five_logo.jpg")
    }
    
    func testThatGivenADictionaryThenAShowcaseAppViewModelIdFieldShoulHaveAValue() {
        XCTAssertEqual(self.mockShowcaseAppViewModel.id, "group-five")
    }
    
    func testThatGivenADictionaryThenAShowcaseAppViewModelIndustryShoulFieldHaveAValue() {
        XCTAssertEqual(self.mockShowcaseAppViewModel.industry, "Asset Management")
    }
    
    func testThatGivenADictionaryThenAShowcaseAppViewModelShortDescriptionFieldShoulHaveAValue() {
        XCTAssertEqual(self.mockShowcaseAppViewModel.shortDescription, "Asset data capturing application")
    }
    
    func testThatGivenADictionaryThenAShowcaseAppViewModelTechnologyUsedFieldShoulHaveAValue() {
        XCTAssertEqual(self.mockShowcaseAppViewModel.technologyUsed, "Windows Phone \n.NET Development ")
    }
    
    func testThatGivenADictionaryThenAShowcaseAppViewModelScreenshotsFieldShoulHaveAValue() {
        let screenshots: [String] = ["app-images/dvt-showcase/about.png", "app-images/dvt-showcase/app_detail_dstv.png"]
        XCTAssertEqual(self.mockShowcaseAppViewModel.screenshots, screenshots)
    }
    
    func testThatGivenAnEmptyDictionaryThenAShowcaseAppViewModelClientFieldShoulBeNil() {
        XCTAssertEqual(self.mockEmptyShowcaseAppViewModel.client, nil)
    }
    
    func testThatGivenAnEmptyDictionaryThenAShowcaseAppViewModelFunctionalityFieldShoulBeNil() {
        XCTAssertEqual(self.mockEmptyShowcaseAppViewModel.functionality, nil)
    }
    
    func testThatGivenAnEmptyDictionaryThenAShowcaseAppViewModelIconUrlFieldShoulBeNil() {
        XCTAssertEqual(self.mockEmptyShowcaseAppViewModel.iconUrl, nil)
    }
    
    func testThatGivenAnEmptyDictionaryThenAShowcaseAppViewModelIdFieldShoulBeNil() {
        XCTAssertEqual(self.mockEmptyShowcaseAppViewModel.id, nil)
    }
    
    func testThatGivenAnEmptyDictionaryThenAShowcaseAppViewModelIndustryFieldIShoulBeNil() {
        XCTAssertEqual(self.mockEmptyShowcaseAppViewModel.industry, nil)
    }
    
    func testThatGivenAnEmptyDictionaryThenAShowcaseAppViewModelShortDescriptionFieldShoulBeNil() {
        XCTAssertEqual(self.mockEmptyShowcaseAppViewModel.shortDescription, nil)
    }
    
    func testThatGivenAnEmptyDictionaryThenAShowcaseAppViewModelTechnologyUsedFieldShoulBeNil() {
        XCTAssertEqual(self.mockEmptyShowcaseAppViewModel.technologyUsed, nil)
    }
    
    func testThatGivenAnEmptyDictionaryThenAShowcaseAppViewModelScreenshotsFieldShoulBeNil() {
        XCTAssertEqual(self.mockEmptyShowcaseAppViewModel.screenshots, nil)
    }
    
    func setupShowcaseAppDictionary() -> [String: Any] {
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
