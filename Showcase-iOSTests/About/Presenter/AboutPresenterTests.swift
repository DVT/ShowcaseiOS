import XCTest
import Cuckoo
@testable import Showcase_iOS

class AboutPresenterTests: XCTestCase {

    // MARK: Injectables

    var mockPresenterViewable = MockAboutPresenterViewable()
    var mockAboutInteractor = MockAboutInteractable()
    var mockSocialMediaResponses = GeneratedSocialMediaData()
    var mockAnalyticsManager = MockAnalyticsManager()

    // MARK: Properties

    var presenterUnderTest: AboutPresenter!
    var mockError = NSError(domain: "Firebase error", code: 1, userInfo: nil)

    // MARK: Lifecycle Method(s)

    override func setUp() {
        super.setUp()
        let aboutPresenter = AboutPresenter()
        aboutPresenter.aboutInteractor = mockAboutInteractor
        aboutPresenter.aboutView = mockPresenterViewable
        aboutPresenter.analyticManager = mockAnalyticsManager
        presenterUnderTest = aboutPresenter
    }

    // MARK: Tests

    func testThatWhenRetrieveSocialMediaLinksFailsWithErrorThatIsNotNilThenShowOnFailureIsCalled() {
        stub(mockPresenterViewable) { (mock) in
            _ = when(mock.hideOnFailure(with: any()).then({ error in
                XCTAssertNotNil(error)
                XCTAssertEqual(error as NSError, self.mockError)
            }))
            _  = when(mock.stopLoadingAnimation().thenDoNothing())
        }
        presenterUnderTest.onRetrieveSocialMediaLinksFailed(with: mockError)
        verify(mockPresenterViewable, times(1)).stopLoadingAnimation()
    }

    func testThatWhenRetrieveSocialMediaLinksSucceedsAndThatLinksIsNotNilThenShowOnSuccessIsCalled() {
        stub(mockPresenterViewable) { (mock) in
            _ = when(mock.showOnSuccess(with: any()).then({ links in
                XCTAssertNotNil(links)
                let expectedTwitter = self.mockSocialMediaResponses.expectedTwitterUrl
                let expectedFacebook = self.mockSocialMediaResponses.expectedFacebookUrl
                let expectedInstagram = self.mockSocialMediaResponses.expectedInstagramUrl
                let expectedWebsite = self.mockSocialMediaResponses.expectedWebsiteUrl
                let actualTwitter = links.twitter
                let actualFacebook = links.facebook
                let actualInstagram = links.instagram
                let actualWebsite = links.website
                XCTAssertEqual(actualFacebook, expectedFacebook)
                XCTAssertEqual(actualTwitter, expectedTwitter)
                XCTAssertEqual(actualInstagram, expectedInstagram)
                XCTAssertEqual(actualWebsite, expectedWebsite)
            }))
            _ = when(mock.stopLoadingAnimation().thenDoNothing())
        }
        let links = mockLinks()
        presenterUnderTest.onRetrieveSocialMediaLinksComplete(with: links)
        verify(mockPresenterViewable, times(1)).stopLoadingAnimation()
        verify(mockPresenterViewable, times(1)).showOnSuccess(with: any())
    }

    func testThatWhenOpenSocialMediaFunctionIsCalledThatTheCorrectFirebaseAnalyticFunctionIsCalled() {
        let mockedAnalyticTag = AnalyticTag.instagramButtonTap
        let mockedUrl = mockSocialMediaResponses.expectedFacebookUrl
        stub(mockAnalyticsManager) { (mock) in
            _ = when(mock.trackButtonTap(buttonName: mockedAnalyticTag.rawValue)).thenDoNothing()
        }
        presenterUnderTest.openSocialMediaLink(with: mockedUrl, and: mockedAnalyticTag)
        verify(mockAnalyticsManager, times(1)).trackButtonTap(buttonName: any())
    }

    // MARK: Mock expected value for links

    func mockLinks() -> SocialMediaLinks {
        let links = SocialMediaLinks(with: mockSocialMediaResponses.mockSocialMediaResponseWithValidData)
        return links
    }

}
