import XCTest
@testable import Showcase_iOS

class ShowcaseAppCellViewModelTests: XCTestCase {

     // MARK: Proptertie(s)

    var viewModelUnderTest = ShowcaseAppCellViewModel()

     // MARK: Lifecycle

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

     // MARK: Tests

    func testThatGetImageURLReturnsAValidImageURL() {
        let showcaseAppDictionary = ["id": "dvt","iconUrl": "dvt.png"]
        let showcaseApp = ShowcaseApp(with: showcaseAppDictionary)
        let showcaseAppViewModel = ShowcaseAppViewModel(with: showcaseApp)
        let url = URL(string: "https://www.dvt.png")
        let imageDictionary: [String: URL] = ["dvt": url!]
        let resultImageurl = viewModelUnderTest.getImageURL(showcaseAppViewModel, imageDictionary )
        XCTAssert(resultImageurl?.absoluteString == url?.absoluteString)
    }

    func testThatIfImageDoesNotExistInTheImageDictionaryThenGetImageURLReturnsNil() {
        let showcaseAppDictionary = ["id": "dvt","iconUrl": "dvt.png"]
        let showcaseApp = ShowcaseApp(with: showcaseAppDictionary)
        let showcaseAppViewModel = ShowcaseAppViewModel(with: showcaseApp)
        let url = URL(string: "https://www.dvt.png")
        let imageDictionary: [String: URL] = ["dvtdvt": url!]
        let resultImageurl = viewModelUnderTest.getImageURL(showcaseAppViewModel, imageDictionary )
        XCTAssertNil(resultImageurl)
    }

}
