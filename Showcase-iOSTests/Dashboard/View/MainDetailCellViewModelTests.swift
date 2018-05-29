//
//  MainDetailCellViewModelTests.swift
//  Showcase-iOSTests
//
//  Created by Edward Mtshweni on 2018/05/29.
//  Copyright © 2018 DVT. All rights reserved.
//

import XCTest
import Cuckoo
@testable import Showcase_iOS

class MainDetailCellViewModelTests: XCTestCase {
    var mockShareApplicationDelegate = MockSharedApplicationDelegate()
    var systemUnderTest: MainDetailViewCellDelegate?

    override func setUp() {
        super.setUp()
        let dependencyContainer = DependencyContainer.container()
        systemUnderTest = dependencyContainer.resolve(MainDetailViewCellDelegate.self)
        systemUnderTest?.sharedApplication = mockShareApplicationDelegate
    }
    
    func testThatWhenOpenURLMethodExecutesWithValidiOSPackageNameThenOpenSharedApplicationExecutes() {
        let showcase = ShowcaseApp(with: setupShowcaseAppDictionary())
        let showcaseViewMpdel = ShowcaseAppViewModel(with: showcase)
        stub(mockShareApplicationDelegate) { mock in
            _ = when(mock.openSharedApplication(with: any()).thenDoNothing())
        }
        systemUnderTest?.openURL(iOSPackageName: showcaseViewMpdel.iosPackageName)
        verify(mockShareApplicationDelegate, times(1)).openSharedApplication(with: any())
    }
    
    func testThatWhenOpenURLMethodExecutesWithInvaliOSPackageNameThenOpenSharedApplicationDoesNotExecute() {
        stub(mockShareApplicationDelegate) { mock in
            _ = when(mock.openSharedApplication(with: any()).thenDoNothing())
        }
        systemUnderTest?.openURL(iOSPackageName: nil)
        verify(mockShareApplicationDelegate, times(0)).openSharedApplication(with: any())
    }
    
    func setupShowcaseAppDictionary() -> [String: Any] {
        var dictionary = [String: Any]()
        dictionary["client"] = "Group Five"
        dictionary["name"] = "Group Five"
        dictionary["functionality"] = "Asset data capture on Windows Mobile devices."
        dictionary["iconUrl"] = "app-images/group-five/group_five_logo.jpg"
        dictionary["id"] = "group-five"
        dictionary["industry"] = "Asset Management"
        dictionary["shortDescription"] = "Asset data capturing application"
        dictionary["technologyUsed"] = "Windows Phone \n.NET Development "
        dictionary["screenshots"] = ["app-images/dvt-showcase/about.png", "app-images/dvt-showcase/app_detail_dstv.png"]
        dictionary["iosPackageName"] = "https://itunes.apple.com/za/app/tracker-connect/id973821442?mt=8"
        return dictionary
    }
}
