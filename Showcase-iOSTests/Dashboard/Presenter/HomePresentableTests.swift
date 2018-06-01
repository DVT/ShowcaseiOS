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
    var mockWireFrameDelegate = MockWireframeDelegate()
    var homePresenter = MockHomePresentable()
    var mockFirebaseStorage = MockFIRStoring()
    var mockStorageReference = MockStorageReferenceable()
    var mockSignOutInteractor = MockSignOutInteractor()
    var mockUserDefaults = MockUserDefaultsProtocol()
    var mockShowcaseApps = [ShowcaseApp]()
    var systemUnderTest: HomePresenter?
    var mockShowcassAppViewModels = [ShowcaseAppViewModel]()
    
    override func setUp() {
        super.setUp()
        let homePresenter = HomePresenter()
        homePresenter.homePresenterInteractable = mockHomeInteractor
        homePresenter.homePresenterViewable = mockHomeViewer
        homePresenter.wireframe = mockWireFrameDelegate
        homePresenter.firebaseStorage = mockFirebaseStorage
        homePresenter.signOutInteractor = mockSignOutInteractor
        homePresenter.userDefaults = mockUserDefaults
        systemUnderTest = homePresenter
    }
    
    func testThatGivenFetchShowcaseAppsFailsThenShowOnFailureIsPresentedWithAnError() {
        stub(mockHomeViewer) { (mock) in
            _ = when(mock.showOnFailure(with: any())).then({ error in
                XCTAssertEqual(error as DatabaseError, .childNotFound)
            })
            _ = when(mock.stopLoadingAnimation().thenDoNothing())
        }
        self.systemUnderTest?.onFetchShowcaseAppsFailure(with: .childNotFound)
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
        self.systemUnderTest?.onFetchShowcaseAppsSuccess(with: [ShowcaseApp]())
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
        self.systemUnderTest?.onFetchShowcaseAppsSuccess(with: self.mockShowcaseApps)
        verify(mockHomeViewer, times(1)).stopLoadingAnimation()
        verify(mockHomeViewer, times(1)).showOnSuccess(with: any())
    }
    
    func testThatGivenSearchTextThenSearchdShouldReturnWihAListOfShowcaseApps() {
        self.setupMockShowcaseAppViewModels()
        systemUnderTest?.showcaseAppViewModels = mockShowcassAppViewModels
        let filteredShowcassApps = self.systemUnderTest?.search(text: "Group")
        XCTAssertTrue((filteredShowcassApps?.count)! == 1)
    }
    
    func testThatGivenEmptySearchTextThenSearchShouldReturnTheAllShowcaseApps() {
        self.setupMockShowcaseAppViewModels()
        systemUnderTest?.showcaseAppViewModels = mockShowcassAppViewModels
        let filteredShowcassApps = self.systemUnderTest?.search(text: "")
        XCTAssertTrue((filteredShowcassApps?.count)! == 2)
    }
    
    func testThatGivenSearchTextWithAnInvalidShowcaseAppListThenSearchShouldReturnAnEmptyList() {
        let showcaseapp = ShowcaseApp(with: [String: Any]())
        mockShowcassAppViewModels.append(ShowcaseAppViewModel(with: showcaseapp))
        systemUnderTest?.showcaseAppViewModels = mockShowcassAppViewModels
        let filteredShowcassApps = self.systemUnderTest?.search(text: "Group Five")
        XCTAssertTrue((filteredShowcassApps?.count)! == 0)
    }
    
    func testThatWhentransitionToShowcaseAppDetailViewGetsCalledThenATransitionToDetailViewTakesPlace(){
        let showcaseapp = ShowcaseApp(with: [String: Any]())
        mockShowcassAppViewModels.append(ShowcaseAppViewModel(with: showcaseapp))
        systemUnderTest?.homePresenterViewable = HomeViewController()
        stub(mockWireFrameDelegate) { (mock) in
            _ = when(mock.transitionToShowcaseAppDetailView(any(), with: any()).thenDoNothing())
        }
        systemUnderTest?.transitionToShowcaseAppDetailView(with: mockShowcassAppViewModels.first!)
        verify(mockWireFrameDelegate, times(1)).transitionToShowcaseAppDetailView(any(), with: any())
    }
    
    func testThatWhentransitonToShowcaseAppDetailViewGetsCalledWhenHomeViewerIsNotAHomeViewControllerThenTransitioningToDetailViewDoesNotTakePlace(){
        let showcaseapp = ShowcaseApp(with: [String: Any]())
        mockShowcassAppViewModels.append(ShowcaseAppViewModel(with: showcaseapp))
        stub(mockWireFrameDelegate) { (mock) in
            _ = when(mock.transitionToShowcaseAppDetailView(any(), with: any()).thenDoNothing())
        }
        systemUnderTest?.transitionToShowcaseAppDetailView(with: mockShowcassAppViewModels.first!)
        verify(mockWireFrameDelegate, times(0)).transitionToShowcaseAppDetailView(any(), with: any())
    }
    
    func testThatFetchShowcaseAppsInvokesTheInteractorToFetchShowcaseAppsAndTheViewToShowLoadingAnimation() {
        stub(mockHomeInteractor) { (mock) in
            _ = when(mock.fetchShowcaseApps().thenDoNothing())
        }
        stub(mockHomeViewer) { (mock) in
            _ = when(mock.startLoadingAnimation().thenDoNothing())
        }
        
        systemUnderTest?.fetchShowcaseApps()
        verify(mockHomeViewer, times(1)).startLoadingAnimation()
        verify(mockHomeInteractor, times(1)).fetchShowcaseApps()
    }
    
    func testThatIfHomePresenterDoesNotHaveAFirebaseStorageThenFetchAllImagesCompletesWithAnEmptyDictionary() {
        systemUnderTest?.firebaseStorage = nil
        systemUnderTest?.fetchAllImages(for: mockShowcassAppViewModels, completed: { (dictionary) in
            XCTAssertTrue(dictionary.isEmpty)
        })
    }
    
    func testThatIfHomePresenterHasAFirebaseStorageThenFetchAllImagesCompleteseWithAnEmptyDictionaryIfTheShowcaseAppViewModelsAreEmpty() {
        stub(mockFirebaseStorage) { (mock) in
            _ = when(mock.storageReference().thenReturn(mockStorageReference))
        }
        systemUnderTest?.fetchAllImages(for: mockShowcassAppViewModels, completed: { (dictionary) in
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
        systemUnderTest?.fetchAllImages(for: mockShowcassAppViewModels, completed: { (dictionary) in
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
        systemUnderTest?.fetchAllImages(for: mockShowcassAppViewModels, completed: { (dictionary) in
            XCTAssertTrue(!dictionary.isEmpty)
        })
    }

    func testThatTheSignOutUserMethodOfTheSignOutInteractorGetInvokedWhenSignGetsCalled() {
        stub(mockSignOutInteractor) { (mock) in
            _ = when(mock.signOut().thenDoNothing())
        }
        systemUnderTest?.signOutUser()
        verify(mockSignOutInteractor, times(1)).signOut()
    }
    
    func testThatWhenTheHomeViewIsNotAHomeViewControllerThenTheTransitionToLoginViewIsNotInvokedWhenTheSignOutGetsCalled() {
        stub(mockWireFrameDelegate) { (mock) in
            _ = when(mock.transitionToLoginView(any()).thenDoNothing())
        }
        stub(mockUserDefaults) { (mock) in
            _ = when(mock.set(value: any(), forKey: any()).thenDoNothing())
        }
        systemUnderTest?.signedOut()
        verify(mockUserDefaults, times(1)).set(value: any(), forKey: any())
        verify(mockWireFrameDelegate, never()).transitionToLoginView(any())
    }
    
    func testThatWhenTheHomeViewIsAHomeViewControllerThenTheTransitionToLoginViewIsNotInvokedWhenTheSignOutGetsCalled() {
        systemUnderTest?.homePresenterViewable = HomeViewController()
        stub(mockWireFrameDelegate) { (mock) in
            _ = when(mock.transitionToLoginView(any()).thenDoNothing())
        }
        stub(mockUserDefaults) { (mock) in
            _ = when(mock.set(value: any(), forKey: any()).thenDoNothing())
        }
        systemUnderTest?.signedOut()
        verify(mockUserDefaults, times(1)).set(value: any(), forKey: any())
        verify(mockWireFrameDelegate, times(1)).transitionToLoginView(any())
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
