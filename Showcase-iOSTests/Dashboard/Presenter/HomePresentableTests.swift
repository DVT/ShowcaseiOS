import XCTest
import Cuckoo
import Firebase
@testable import Showcase_iOS

class HomePresentableTests: XCTestCase {

    // MARK: Mocked Injectable(s)

    var mockHomeViewer = MockHomePresenterViewable()
    var mockHomeInteractor = MockHomePresenterInteractable()
    var mockWireFrameDelegate = MockWireframeDelegate()
    var mockedHomePresenter = MockHomePresentable()
    var mockFirebaseStorage = MockFIRStoring()
    var mockStorageReference = MockStorageReferenceable()
    var mockSignOutInteractor = MockSignOutInteractor()
    var mockUserDefaults = MockUserDefaultsProtocol()
    var mockAnalyticsManager = MockAnalyticsManager()
    var mockShowcaseApps = [ShowcaseApp]()
    var mockShowcassAppViewModels = [ShowcaseAppViewModel]()

    // MARK: Presenter under test

    var presenterUnderTest: HomePresenter?

    // MARK: Lifecycle Method(s)

    override func setUp() {
        super.setUp()
        let homePresenter = HomePresenter()
        homePresenter.homePresenterInteractable = mockHomeInteractor
        homePresenter.homePresenterViewable = mockHomeViewer
        homePresenter.wireframe = mockWireFrameDelegate
        homePresenter.firebaseStorage = mockFirebaseStorage
        homePresenter.signOutInteractor = mockSignOutInteractor
        homePresenter.userDefaults = mockUserDefaults
        homePresenter.analyticManager = mockAnalyticsManager
        presenterUnderTest = homePresenter
    }

    override func tearDown() {
        super.tearDown()
    }

    // MARK: Test(s)

    func testThatGivenFetchShowcaseAppsFailsThenShowOnFailureIsPresentedWithAnError() {
        stub(mockHomeViewer) { (mock) in
            _ = when(mock.showOnFailure(with: any())).then({ error in
                XCTAssertEqual(error as DatabaseError, .childNotFound)
            })
            _ = when(mock.stopLoadingAnimation().thenDoNothing())
        }
        self.presenterUnderTest?.onFetchShowcaseAppsFailure(with: .childNotFound)
        verify(mockHomeViewer, times(1)).stopLoadingAnimation()
        verify(mockHomeViewer, times(1)).showOnFailure(with: any())
    }

    func testThatGivenFetchShowcaseAppsSuccedsThenShowOnSuccessIsPresentedWithAnEmptyListOfShowcaseApps() {
        stub(mockHomeViewer) { (mock) in
            _ = when(mock.showOnSuccess(with: any()).then({ showcaseApps in
                XCTAssertTrue(showcaseApps.isEmpty)
            }))
            _ = when(mock.stopLoadingAnimation().thenDoNothing())
        }
        self.presenterUnderTest?.onFetchShowcaseAppsSuccess(with: [ShowcaseApp]())
        verify(mockHomeViewer, times(1)).stopLoadingAnimation()
        verify(mockHomeViewer, times(1)).showOnSuccess(with: any())
    }

    func testThatGivenFetchShowcaseAppsSuccedsThenShowOnSuccessIsPresentedWithAListOfShowcaseAppsThatIsNotEmpty() {
        let dictionary = setupMockShowcaseAppDictionary()
        self.mockShowcaseApps.append(ShowcaseApp(with: dictionary))
        stub(mockHomeViewer) { (mock) in
            _ = when(mock.showOnSuccess(with: any()).then({ showcaseApps in
                XCTAssertTrue(showcaseApps.count > 0)
            }))
            _ = when(mock.stopLoadingAnimation().thenDoNothing())
        }
        self.presenterUnderTest?.onFetchShowcaseAppsSuccess(with: self.mockShowcaseApps)
        verify(mockHomeViewer, times(1)).stopLoadingAnimation()
        verify(mockHomeViewer, times(1)).showOnSuccess(with: any())
    }

    func testThatGivenSearchTextThenSearchdShouldReturnWihAListOfShowcaseApps() {
        self.setupMockShowcaseAppViewModels()
        presenterUnderTest?.showcaseAppViewModels = mockShowcassAppViewModels
        let filteredShowcassApps = self.presenterUnderTest?.search(text: "Group")
        XCTAssertTrue((filteredShowcassApps?.count)! == 1)
    }

    func testThatGivenEmptySearchTextThenSearchShouldReturnTheAllShowcaseApps() {
        self.setupMockShowcaseAppViewModels()
        presenterUnderTest?.showcaseAppViewModels = mockShowcassAppViewModels
        let filteredShowcassApps = self.presenterUnderTest?.search(text: "")
        XCTAssertTrue((filteredShowcassApps?.count)! == 2)
    }

    func testThatGivenSearchTextWithAnInvalidShowcaseAppListThenSearchShouldReturnAnEmptyList() {
        let showcaseapp = ShowcaseApp(with: [String: Any]())
        mockShowcassAppViewModels.append(ShowcaseAppViewModel(with: showcaseapp))
        presenterUnderTest?.showcaseAppViewModels = mockShowcassAppViewModels
        let filteredShowcassApps = self.presenterUnderTest?.search(text: "Group Five")
        XCTAssertTrue((filteredShowcassApps?.count)! == 0)
    }

    func testThatWhentransitionToShowcaseAppDetailViewGetsCalledThenATransitionToDetailViewTakesPlace(){
        let showcaseapp = ShowcaseApp(with: [String: Any]())
        mockShowcassAppViewModels.append(ShowcaseAppViewModel(with: showcaseapp))
        presenterUnderTest?.homePresenterViewable = HomeViewController()
        stub(mockWireFrameDelegate) { (mock) in
            _ = when(mock.transitionToShowcaseAppDetailView(any(), with: any()).thenDoNothing())
        }
        presenterUnderTest?.transitionToShowcaseAppDetailView(with: mockShowcassAppViewModels.first!)
        verify(mockWireFrameDelegate, times(1)).transitionToShowcaseAppDetailView(any(), with: any())
    }

    func testThatWhentransitonToShowcaseAppDetailViewGetsCalledWhenHomeViewerIsNotAHomeViewControllerThenTransitioningToDetailViewDoesNotTakePlace(){
        let showcaseapp = ShowcaseApp(with: [String: Any]())
        mockShowcassAppViewModels.append(ShowcaseAppViewModel(with: showcaseapp))
        stub(mockWireFrameDelegate) { (mock) in
            _ = when(mock.transitionToShowcaseAppDetailView(any(), with: any()).thenDoNothing())
        }
        presenterUnderTest?.transitionToShowcaseAppDetailView(with: mockShowcassAppViewModels.first!)
        verify(mockWireFrameDelegate, times(0)).transitionToShowcaseAppDetailView(any(), with: any())
    }

    func testThatFetchShowcaseAppsInvokesTheInteractorToFetchShowcaseAppsAndTheViewToShowLoadingAnimation() {
        stub(mockHomeInteractor) { (mock) in
            _ = when(mock.fetchShowcaseApps().thenDoNothing())
        }
        stub(mockHomeViewer) { (mock) in
            _ = when(mock.startLoadingAnimation().thenDoNothing())
        }
        
        presenterUnderTest?.fetchShowcaseApps()
        verify(mockHomeViewer, times(1)).startLoadingAnimation()
        verify(mockHomeInteractor, times(1)).fetchShowcaseApps()
    }

    func testThatIfHomePresenterDoesNotHaveAFirebaseStorageThenFetchAllImagesCompletesWithAnEmptyDictionary() {
        presenterUnderTest?.firebaseStorage = nil
        presenterUnderTest?.fetchAllImages(for: mockShowcassAppViewModels, completed: { (dictionary) in
            XCTAssertTrue(dictionary.isEmpty)
        })
    }

    func testThatIfHomePresenterHasAFirebaseStorageThenFetchAllImagesCompleteseWithAnEmptyDictionaryIfTheShowcaseAppViewModelsAreEmpty() {
        stub(mockFirebaseStorage) { (mock) in
            _ = when(mock.storageReference().thenReturn(mockStorageReference))
        }
        presenterUnderTest?.fetchAllImages(for: mockShowcassAppViewModels, completed: { (dictionary) in
            XCTAssertTrue(dictionary.isEmpty)
        })
    }

    func testThatFetchAllImagesCompletesWithADictionaryOfImageURLSWhenShowcaseAppViewModelsEmptyWhenTheImageFetcherReturnsErrors() {
        self.setupMockShowcaseAppViewModels()
        stub(mockFirebaseStorage) { (mock) in
            _ = when(mock.storageReference().thenReturn(mockStorageReference))
        }
        stub(mockStorageReference) { (mock) in
            _ = when(mock.child(from: any()).thenReturn(mockStorageReference))
            _ = when(mock.downloadImageUrl(completion: any()).then({ completion in
                let error = NSError(domain: "error", code: 1, userInfo: nil)
                completion(nil, error)
            }))
        }
        presenterUnderTest?.fetchAllImages(for: mockShowcassAppViewModels, completed: { (dictionary) in
            XCTAssertTrue(dictionary.isEmpty)
        })
    }

    func testThatFetchAllImagesCompletesWithADictionaryOfImageURLSWhenShowcaseAppViewModelsNotEmptyWhenTheImageFetcherReturnsValidImageURLSFromFirebase() {
        self.setupMockShowcaseAppViewModels()
        stub(mockFirebaseStorage) { (mock) in
            _ = when(mock.storageReference().thenReturn(mockStorageReference))
        }
        stub(mockStorageReference) { (mock) in
            _ = when(mock.child(from: any()).thenReturn(mockStorageReference))
            _ = when(mock.downloadImageUrl(completion: any()).then({ completion in
                let imageURL = URL(string: "https://www.testUrl.png")
                completion(imageURL, nil)
            }))
        }
        presenterUnderTest?.fetchAllImages(for: mockShowcassAppViewModels, completed: { (dictionary) in
            XCTAssertTrue(!dictionary.isEmpty)
        })
    }

    func testThatTheSignOutUserMethodOfTheSignOutInteractorGetInvokedWhenSignGetsCalled() {
        stub(mockSignOutInteractor) { (mock) in
            _ = when(mock.signOut().thenDoNothing())
        }
        presenterUnderTest?.signOutUser()
        verify(mockSignOutInteractor, times(1)).signOut()
    }

    func testThatWhenTheHomeViewIsNotAHomeViewControllerThenTheTransitionToLoginViewIsNotInvokedWhenTheSignOutGetsCalled() {
        stub(mockWireFrameDelegate) { (mock) in
            _ = when(mock.transitionToLoginView(any()).thenDoNothing())
        }
        stub(mockUserDefaults) { (mock) in
            _ = when(mock.set(value: any(), forKey: any()).thenDoNothing())
        }
        presenterUnderTest?.signedOut()
        verify(mockUserDefaults, times(1)).set(value: any(), forKey: any())
        verify(mockWireFrameDelegate, never()).transitionToLoginView(any())
    }

    func testThatWhenTheHomeViewIsAHomeViewControllerThenTheTransitionToLoginViewIsNotInvokedWhenTheSignOutGetsCalled() {
        presenterUnderTest?.homePresenterViewable = HomeViewController()
        stub(mockWireFrameDelegate) { (mock) in
            _ = when(mock.transitionToLoginView(any()).thenDoNothing())
        }
        stub(mockUserDefaults) { (mock) in
            _ = when(mock.set(value: any(), forKey: any()).thenDoNothing())
        }
        presenterUnderTest?.signedOut()
        verify(mockUserDefaults, times(1)).set(value: any(), forKey: any())
        verify(mockWireFrameDelegate, times(1)).transitionToLoginView(any())
    }

    func testThatWhenAnApplicationIsSelectedThatTheAnalyticIsFired() {
        let mockSelectedApplication = "mocked_application"
        stub(mockAnalyticsManager) { (mock) in
            _ = when(mock.trackSelectionOfApplication(applicationName: mockSelectedApplication)).thenDoNothing()
        }
        presenterUnderTest?.trackDidSelectApplication(application: mockSelectedApplication)
        verify(mockAnalyticsManager, times(1)).trackSelectionOfApplication(applicationName: any())
    }

    func  testThatWhenLogoutInTappedThatTheAnalyticIsFired() {
        let mockButtonTapped = AnalyticTag.logoutTap
        stub(mockAnalyticsManager) { (mock) in
           _ = when(mock.trackButtonTap(buttonName: mockButtonTapped.rawValue)).thenDoNothing()
        }
        presenterUnderTest?.trackButtonTap(analyticTag: mockButtonTapped)
        verify(mockAnalyticsManager, times(1)).trackButtonTap(buttonName: any())
    }

    // MARK: Mocked responses

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

    func setupMockShowcaseAppViewModels() {
        var dictionary = [String: Any]()
        dictionary["client"] = "Absa"
        dictionary["functionality"] = "Asset data capture on Windows Mobile devices."
        dictionary["iconUrl"] = "app-images/group-five/group_five_logo.jpg"
        dictionary["id"] = "group-five"
        dictionary["industry"] = "Asset Management"
        dictionary["shortDescription"] = "Asset data capturing application"
        dictionary["technologyUsed"] = "Windows Phone \n.NET Development "
        dictionary["screenshots"] = ["app-images/dvt-showcase/about.png", "app-images/dvt-showcase/app_detail_dstv.png"]
        
        var showcaseapp = ShowcaseApp(with: setupMockShowcaseAppDictionary())
        mockShowcassAppViewModels.append(ShowcaseAppViewModel(with: showcaseapp))
        showcaseapp = ShowcaseApp(with: dictionary)
        mockShowcassAppViewModels.append(ShowcaseAppViewModel(with: showcaseapp))
    }

}
