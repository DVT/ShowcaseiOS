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
    var systeUnderTest: HomePresenter?
    
    override func setUp() {
        super.setUp()
        let homePresenter = HomePresenter()
        homePresenter.homePresenterInteractable = mockHomeInteractor
        homePresenter.homePresenterViewable = mockHomeViewer
        systeUnderTest = homePresenter
    }
    
    func testThatGivenFetchShowcaseAppsFailsThenShowOnFailureIsPresentedWithAnError() {
        stub(mockHomeViewer) { (mock) in
            _ = when(mock.showOnFailure(with: any())).then({ error in
                XCTAssertEqual(error as DatabaseError, .childNotFound)
            })
        }
        self.systeUnderTest?.onFetchShowcaseAppsFailure(with: .childNotFound)
        verify(mockHomeViewer, times(1)).showOnFailure(with: any())
    }
    
    func testThatGivenFetchShowcaseAppsSuccedsThenShowOnSuccessIsPresentedWithAnEmptyListOfShowcaseApps() {
        stub(mockHomeViewer) { (mock) in
            _ = when(mock.showOnSuccess(with: any()).then({ showcaseApps in
                XCTAssertTrue(showcaseApps.isEmpty)
            }))
        }
        self.systeUnderTest?.onFetchShowcaseAppsSuccess(with: [ShowcaseApp]())
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
        self.systeUnderTest?.onFetchShowcaseAppsSuccess(with: self.mockShowcaseApps)
        verify(mockHomeViewer, times(1)).showOnSuccess(with: any())
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
