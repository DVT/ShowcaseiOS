//
//  HomeViewTests.swift
//  Showcase-iOSTests
//
//  Created by Edward Mtshweni on 2018/05/14.
//  Copyright © 2018 DVT. All rights reserved.
//

import XCTest
import Cuckoo
@testable import Showcase_iOS

class HomeViewTests: XCTestCase {
    let mockPresenter = MockHomePresentable()
    var homeViewable = MockHomePresenterViewable()
    var systemUnderTest: HomeViewController?
    var mockShowcaseAppsViewModels = [ShowcaseAppViewModel]()
    
    override func setUp() {
        super.setUp()
        let homeViewController = HomeViewController()
        homeViewController.presenter = mockPresenter
        self.systemUnderTest = homeViewController
        self.mockShowcaseAppsViewModels = self.mockFetchShowcaseApps()
    }
    
    func testThatWhenFetchingShowcaseAppsItCompletesWithAnError() {
        self.systemUnderTest?.showOnFailure(with: DatabaseError.childNotFound)
    }
    
    func testThatWhenFetchingShowcaseAppsItCompletesWithAListOfShowcaseApps() {
        stub(mockPresenter) { (mock) in
            _ = when(mock.fetchShowcaseApps()).thenDoNothing()
        }
        self.systemUnderTest?.showOnSuccess(with: self.mockShowcaseAppsViewModels)
    }
    
    func mockFetchShowcaseApps() -> [ShowcaseAppViewModel] {
        let showcaseViewModel = ShowcaseApp(with: self.setupShowcaseAppDictionary())
        mockShowcaseAppsViewModels.append(ShowcaseAppViewModel(with: showcaseViewModel))
        return mockShowcaseAppsViewModels
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
