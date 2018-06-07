//
//  ShowcaseAppCellViewModelTests.swift
//  Showcase-iOSTests
//
//  Created by Lehlohonolo Mbele on 2018/05/29.
//  Copyright © 2018 DVT. All rights reserved.
//

import XCTest
@testable import Showcase_iOS

class ShowcaseAppCellViewModelTests: XCTestCase {
    
    var systemUnderTest = ShowcaseAppCellViewModel()
    
    override func setUp() {
        super.setUp()
    }
    
    
    func testThatGetImageURLReturnsAValidImageURL() {
        let showcaseAppDictionary = ["id": "dvt","iconUrl": "dvt.png"]
        let showcaseApp = ShowcaseApp(with: showcaseAppDictionary)
        let showcaseAppViewModel = ShowcaseAppViewModel(with: showcaseApp)
        let url = URL(string: "https://www.dvt.png")
        let imageDictionary: [String: URL] = ["dvt": url!]
        let resultImageurl = systemUnderTest.getImageURL(showcaseAppViewModel, imageDictionary )
        XCTAssert(resultImageurl?.absoluteString == url?.absoluteString)
    }
    
    func testThatIfImageDoesNotExistInTheImageDictionaryThenGetImageURLReturnsNil() {
        let showcaseAppDictionary = ["id": "dvt","iconUrl": "dvt.png"]
        let showcaseApp = ShowcaseApp(with: showcaseAppDictionary)
        let showcaseAppViewModel = ShowcaseAppViewModel(with: showcaseApp)
        let url = URL(string: "https://www.dvt.png")
        let imageDictionary: [String: URL] = ["dvtdvt": url!]
        let resultImageurl = systemUnderTest.getImageURL(showcaseAppViewModel, imageDictionary )
        XCTAssertNil(resultImageurl)
    }
    
}
