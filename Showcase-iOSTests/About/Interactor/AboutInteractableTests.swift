import XCTest
import Cuckoo
import Firebase
@testable import Showcase_iOS

class AboutInteractableTests: XCTestCase {

    // MARK: Mocked dependencies

    var mockDatabaseRefeceabele = MockDataReferenceable()
    let mockedSocialMediaResponses = GeneratedSocialMediaData()
    var mockAboutPresentable = MockAboutPresentable()
    var mockDataSnapshot = MockDataSnapshotProtocol()
    var mockError: NSError?

    // MARK: interactor under test

    var interactorUnderTest: AboutInteractableImplementation?

    // MARK: lifecycle methods

    override func setUp() {
        super.setUp()
        mockError = NSError(domain: "FirebaseError", code: 1, userInfo: nil)
        let aboutInteractor = AboutInteractableImplementation()
        aboutInteractor.aboutPresenter = mockAboutPresentable
        aboutInteractor.dataReference = mockDatabaseRefeceabele
        interactorUnderTest = aboutInteractor
    }

    override func tearDown() {
        super.tearDown()
        mockError = nil
    }

    // MARK: Negative tests

    func testThatRetrievingFirbaseLinksReturnsAValidErrorWhenFirebaseLinksRetrieverReturnsAnError() {
        setupMockedStubs()
        stub(mockDatabaseRefeceabele) { mock in
             _ = when(mock.observe(eventType: any(), with: any(), withCancel: any()).then({ _, _, errorCompletion in
                errorCompletion(self.mockError!)
            }))
        }
        stub(mockAboutPresentable) { mock in
            _ = when(mock.onRetrieveSocialMediaLinksFailed(with: any()).then({ error in
                let errorResult = error as NSError
                XCTAssertEqual(errorResult, self.mockError!)
            }))
        }
        interactorUnderTest?.retrieveSocialMediaLinks()
        verify(mockAboutPresentable, times(1)).onRetrieveSocialMediaLinksFailed(with: any())
    }

     // MARK: Positive tests

    func testThatWhenFirebaseLinksRetrieverReturnsANilSnapshotThenOnRetrieveSocialMediaCompletesWithAnEmptySocialMediaLinks() {
        setupMockedStubs()

        stub(mockDataSnapshot) { (mock) in
            _ = when(mock.value.get.thenReturn(mockedSocialMediaResponses.mockEmptySocialMediaResponse))
        }

        stub(mockDatabaseRefeceabele) { mock in
            _ = when(mock.observe(eventType: any(), with: any(), withCancel: any()).then({ _, successCompletion, _ in
                successCompletion(self.mockDataSnapshot)
            }))
        }

        stub(mockAboutPresentable) { mock in
            _ = when(mock.onRetrieveSocialMediaLinksComplete(with: any()).then({ (links) in
                XCTAssertTrue(links.website == nil)
                XCTAssertTrue(links.instagram == nil)
                XCTAssertTrue(links.facebook == nil)
                XCTAssertTrue(links.twitter == nil)
            }))
        }

        interactorUnderTest?.retrieveSocialMediaLinks()
        verify(mockAboutPresentable, times(1)).onRetrieveSocialMediaLinksComplete(with: any())
    }

    func testThatWhenFirebaseLinksRetrieverReturnsAValidNonEmptySnapShotThenOnRetrievesSocialMediaLinksWithComplete() {
        setupMockedStubs()

        stub(mockDataSnapshot) { (mock) in
            _ = when(mock.value.get.thenReturn(mockedSocialMediaResponses.mockSocialMediaResponseWithValidData))
        }

        stub(mockDatabaseRefeceabele) { mock in
            _ = when(mock.observe(eventType: any(), with: any(), withCancel: any()).then({ _, successCompletion, _ in
                successCompletion(self.mockDataSnapshot)
            }))
        }

        stub(mockAboutPresentable) { mock in
            _ = when(mock.onRetrieveSocialMediaLinksComplete(with: any()).then({ (links) in
                XCTAssertTrue(links.website != nil)
                let expectedResult = self.mockedSocialMediaResponses.expectedSocialMediaLinks.website
                let actualResult = links.website
                XCTAssertEqual(actualResult, expectedResult)

            }))
        }

        interactorUnderTest?.retrieveSocialMediaLinks()
        verify(mockAboutPresentable, times(1)).onRetrieveSocialMediaLinksComplete(with: any())
    }

    // MARK: Support mock methods

    func setupMockedStubs() {
        stub(mockDatabaseRefeceabele) { (mock) in
             _ = when(mock.databaseReference().then({ return self.mockDatabaseRefeceabele }))
             _ = when(mock.child(any()).then({ _ in return self.mockDatabaseRefeceabele}))
        }
    }

}
