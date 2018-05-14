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
    
    override func setUp() {
        super.setUp()
        let homeViewController = HomeViewController()
        homeViewController.presenter = mockPresenter
        self.systemUnderTest = homeViewController
    }
    
    func testThatWhenFetchingShowcaseAppsItCompletesWithAnError() {
        systemUnderTest?.showOnFailure(with: DatabaseError.childNotFound)
    }
}
