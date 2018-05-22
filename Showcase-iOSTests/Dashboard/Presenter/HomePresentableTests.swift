//
//  HomePresentableTests.swift
//  Showcase-iOSTests
//
//  Created by Edward Mtshweni on 2018/05/03.
//  Copyright © 2018 DVT. All rights reserved.
//

import XCTest
import Cuckoo
import Firebase
@testable import Showcase_iOS

class HomePresentableTests: XCTestCase {
    var mockHomeViewer = MockHomePresenterViewable()
    var mockHomeInteractor = MockHomePresenterInteractable()
    var homePresenter = MockHomePresentable()
    var mockShowcaseApps = [ShowcaseApp]()
    var systemUnderTest: HomePresenter?
    var mockShowcassAppViewModels = [ShowcaseAppViewModel]()
    
    override func setUp() {
        super.setUp()
        let homePresenter = HomePresenter()
        homePresenter.homePresenterInteractable = mockHomeInteractor
        homePresenter.homePresenterViewable = mockHomeViewer
        systemUnderTest = homePresenter
    }
    
    func testThatGivenFetchShowcaseAppsFailsThenShowOnFailureIsPresentedWithAnError() {
        stub(mockHomeViewer) { (mock) in
            _ = when(mock.showOnFailure(with: any())).then({ error in
                XCTAssertEqual(error as DatabaseError, .childNotFound)
            })
        }
        self.systemUnderTest?.onFetchShowcaseAppsFailure(with: .childNotFound)
        verify(mockHomeViewer, times(1)).showOnFailure(with: any())
    }
    
    func testThatGivenFetchShowcaseAppsSuccedsThenShowOnSuccessIsPresentedWithAnEmptyListOfShowcaseApps() {
        stub(mockHomeViewer) { (mock) in
            _ = when(mock.showOnSuccess(with: any()).then({ showcaseApps in
                XCTAssertTrue(showcaseApps.isEmpty)
            }))
        }
        self.systemUnderTest?.onFetchShowcaseAppsSuccess(with: [ShowcaseApp]())
        verify(mockHomeViewer, times(1)).showOnSuccess(with: any())
    }
    
    func testThatGivenFetchShowcaseAppsSuccedsThenShowOnSuccessIsPresentedWithAListOfShowcaseAppsThatIsNotEmpty() {
        let dictionary = setupMockShowcaseAppDictionary()
        self.mockShowcaseApps.append(ShowcaseApp(with: dictionary))
        stub(mockHomeViewer) { (mock) in
            _ = when(mock.showOnSuccess(with: any()).then({ showcaseApps in
                XCTAssertTrue(showcaseApps.count > 0)
            }))
        }
        self.systemUnderTest?.onFetchShowcaseAppsSuccess(with: self.mockShowcaseApps)
        verify(mockHomeViewer, times(1)).showOnSuccess(with: any())
    }
    
    func testThatGivenSearchTextThenSearchdShouldReturnWihAListOfShowcaseApps() {
        self.setupMockShowcaseAppViewModels()
        systemUnderTest?.showcaseAppViewModels = mockShowcassAppViewModels
        let filteredShowcassApps = self.systemUnderTest?.search(text: "Group")
        XCTAssertTrue((filteredShowcassApps?.count)! == 1)
    }
    
    func testThatGivenEmptySearchTextThenSearchShouldReturnTheAllShowcaseApps() {
        self.setupMockShowcaseAppViewModels()
        systemUnderTest?.showcaseAppViewModels = mockShowcassAppViewModels
        let filteredShowcassApps = self.systemUnderTest?.search(text: "")
        XCTAssertTrue((filteredShowcassApps?.count)! == 2)
    }
    
    func testThatGivenSearchTextWithAnInvalidShowcaseAppListThenSearchShouldReturnAnEmptyList() {
        let showcaseapp = ShowcaseApp(with: [String: Any]())
        mockShowcassAppViewModels.append(ShowcaseAppViewModel(with: showcaseapp))
        systemUnderTest?.showcaseAppViewModels = mockShowcassAppViewModels
        let filteredShowcassApps = self.systemUnderTest?.search(text: "Group Five")
        XCTAssertTrue((filteredShowcassApps?.count)! == 0)
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
    
    func setupMockShowcaseAppViewModels() {
        var dictionary = [String: Any]()
        dictionary["client"] = "Absa"
        dictionary["functionality"] = "Asset data capture on Windows Mobile devices."
        dictionary["iconUrl"] = "app-images/group-five/group_five_logo.jpg"
        dictionary["id"] = "group-five"
        dictionary["industry"] = "Asset Management"
        dictionary["shortDescription"] = "Asset data capturing application"
        dictionary["technologyUsed"] = "Windows Phone \n.NET Development "
        dictionary["screenshots"] = ["app-images/dvt-showcase/about.png", "app-images/dvt-showcase/app_detail_dstv.png"]
        
        var showcaseapp = ShowcaseApp(with: setupMockShowcaseAppDictionary())
        mockShowcassAppViewModels.append(ShowcaseAppViewModel(with: showcaseapp))
        showcaseapp = ShowcaseApp(with: dictionary)
        mockShowcassAppViewModels.append(ShowcaseAppViewModel(with: showcaseapp))
    }
}
