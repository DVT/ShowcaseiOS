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

    var systemUnderTest: AboutPresenter!
    var mockError = NSError(domain: "Firebase error", code: 1, userInfo: nil)

    // MARK: Lifecycle Method(s)

    override func setUp() {
        super.setUp()
        let aboutPresenter = AboutPresenter()
        aboutPresenter.aboutInteractor = mockAboutInteractor
        aboutPresenter.aboutView = mockPresenterViewable
        aboutPresenter.analyticManager = mockAnalyticsManager
        systemUnderTest = aboutPresenter
    }

    // MARK: Test(s)

    func testThatWhenRetrieveSocialMediaLinksFailsWithErrorThatIsNotNilThenShowOnFailureIsCalled() {
        stub(mockPresenterViewable) { (mock) in
            _ = when(mock.hideOnFailure(with: any()).then({ error in
                XCTAssertNotNil(error)
                XCTAssertEqual(error as NSError, self.mockError)
            }))
            _  = when(mock.stopLoadingAnimation().thenDoNothing())
        }
        systemUnderTest.onRetrieveSocialMediaLinksFailed(with: mockError)
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
        systemUnderTest.onRetrieveSocialMediaLinksComplete(with: links)
        verify(mockPresenterViewable, times(1)).stopLoadingAnimation()
        verify(mockPresenterViewable, times(1)).showOnSuccess(with: any())
    }

    func testThatWhenOpenSocialMediaFunctionIsCalledThatTheCorrectFirebaseAnalyticFunctionIsCalled() {
        let mockedAnalyticTag = AnalyticTag.instagramButtonTap
        stub(mockAnalyticsManager) { (mock) in
            _ = when(mock.trackButtonTap(buttonName: mockedAnalyticTag.rawValue)).thenDoNothing()
        }
        systemUnderTest.trackSocialMediaButtonTap(with: mockedAnalyticTag)
        verify(mockAnalyticsManager, times(1)).trackButtonTap(buttonName: any())
    }

    func testThatWhenRetrieveSocialMediaLinksIsCalledThatPresenterStartsLoadingAnimation() {
        stub(mockPresenterViewable) { (mock) in
            _ = when(mock.startLoadingAnimation()).then({ (_) in
                self.systemUnderTest.retrieveSocialMediaLinks()
                verify(self.mockPresenterViewable, times(1)).startLoadingAnimation()
            })
        }
    }

    func testThatWhenRetrieveSocialMediaLinksIsCalledInteractorFetchesLinks() {
        stub(mockAboutInteractor) { (mock) in
            _ = when(mock.retrieveSocialMediaLinks()).then({ (_) in
                self.systemUnderTest.retrieveSocialMediaLinks()
                verify(self.mockAboutInteractor, times(1)).retrieveSocialMediaLinks()
            })
        }
    }

    // MARK: Mock expected value for links

    func mockLinks() -> SocialMediaLinks {
        let links = SocialMediaLinks(with: mockSocialMediaResponses.mockSocialMediaResponseWithValidData)
        return links
    }

}
