import XCTest
import Cuckoo
@testable import Showcase_iOS

class MainDetailCellViewModelTests: XCTestCase {
    
     // MARK: Mocked dependencies

    var mockShareApplicationDelegate = MockSharedApplicationDelegate()

     // MARK: System under test

    var viewModelUnderTest: MainDetailViewCellDelegate?

     // MARK: Lifecycle

    override func setUp() {
        super.setUp()
        let dependencyContainer = DependencyContainer.container()
        viewModelUnderTest = dependencyContainer.resolve(MainDetailViewCellDelegate.self)
        viewModelUnderTest?.sharedApplication = mockShareApplicationDelegate
    }
    
    override func tearDown() {
        super.tearDown()
    }

     // MARK: Tests

    func testThatWhenOpenURLMethodExecutesWithValidiOSPackageNameThenOpenSharedApplicationExecutes() {
        let showcase = ShowcaseApp(with: setupShowcaseAppDictionary())
        let showcaseViewMpdel = ShowcaseAppViewModel(with: showcase)
        stub(mockShareApplicationDelegate) { mock in
            _ = when(mock.openSharedApplication(with: any()).thenDoNothing())
        }
        viewModelUnderTest?.openURL(iOSPackageName: showcaseViewMpdel.iosPackageName)
        verify(mockShareApplicationDelegate, times(1)).openSharedApplication(with: any())
    }

    func testThatWhenOpenURLMethodExecutesWithInvaliOSPackageNameThenOpenSharedApplicationDoesNotExecute() {
        stub(mockShareApplicationDelegate) { mock in
            _ = when(mock.openSharedApplication(with: any()).thenDoNothing())
        }
        viewModelUnderTest?.openURL(iOSPackageName: nil)
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
