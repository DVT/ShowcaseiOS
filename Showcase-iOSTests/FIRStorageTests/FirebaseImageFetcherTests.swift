
import XCTest
import Cuckoo
@testable import Showcase_iOS

class FirebaseImageFetcherTests: XCTestCase {
    
    //MARK: Mockable(s)
    
    var mockFIRStorage = MockFIRStoring()
    var mockStorageRef = MockStorageReferenceable()
    
    //MARK: System under test
    
    var systemUdertest: ImageFetcher!
    
    //MARK: Mock properties
    
    var mockUrlString = "http://getMock"
    var mockError = NSError(domain: "FetchImagesError", code: 1, userInfo: nil)
    
    //MARK: Lifecycle method(s)
    
    override func setUp() {
        super.setUp()
        setUpFirebaseStorageReferenceStub()
        systemUdertest = ImageFetcher(from: mockFIRStorage)
    }
    
    //MARK: Tests
    
    func testThatWhenDownloadUrlCompletesWithAnErrorThenFetchImagesCompletesWithTheSameError() {
        setUpStorageReferenceStubWithChild()
        setUpsetUpStorageReferenceStubWithDownloadUrlWithError()
        systemUdertest.fetchImage(mockUrlString) { (_, error) in
            XCTAssertEqual(error! as NSError,self.mockError)
        }
        verify(mockStorageRef, times(1)).downloadImageUrl(completion: any())
    }
    
    func testThatWhenDownloadUrlCompletesWithAnErrorThenFetchImageCompletesWithTheSameUrl() {
        setUpStorageReferenceStubWithChild()
        setUpsetUpStorageReferenceStubWithDownloadUrlWithUrl()
        systemUdertest.fetchImage(mockUrlString) { (url, _) in
            let imageUrl = URL(string: self.mockUrlString)
            XCTAssertEqual(url, imageUrl)
        }
        verify(mockStorageRef, times(1)).downloadImageUrl(completion: any())
        
    }
    
    func testThatWhenDownloadUrlCompleteWithAUrlThatIsNotNilThenFetchImagesCompletesWithAUrlThatIsNotNil() {
        setUpStorageReferenceStubWithChild()
        setUpsetUpStorageReferenceStubWithDownloadUrlWithUrl()
        systemUdertest.fetchImage(mockUrlString) { ( url, _) in
            XCTAssertNotNil(url)
        }
        verify(mockStorageRef, times(1)).downloadImageUrl(completion: any())
    }
    
    func testThatWhenDownloadUrlCompleteWithAnErrorThatIsNotNilThenFetchImagesCompletesWithAnErrorThatIsNotNil() {
        setUpStorageReferenceStubWithChild()
        setUpsetUpStorageReferenceStubWithDownloadUrlWithError()
        systemUdertest.fetchImage(mockUrlString) { (_, error) in
            XCTAssertNotNil(error)
        }
        verify(mockStorageRef, times(1)).downloadImageUrl(completion: any())
    }
    
    //MARK: Test helpers
    
    func setUpStorageReferenceStubWithChild() {
        stub(mockStorageRef) { (mock) in
            _ = when(mock.child(from: anyString()).thenReturn(mockStorageRef))
        }
    }
    
    func setUpsetUpStorageReferenceStubWithDownloadUrlWithError() {
        stub(mockStorageRef) { (mock) in
            _ = when(mock.downloadImageUrl(completion: any()).then({ completion in
                completion(nil, self.mockError)
            }))
        }
    }
    
    func setUpsetUpStorageReferenceStubWithDownloadUrlWithUrl() {
        stub(mockStorageRef) { (mock) in
            _ = when(mock.downloadImageUrl(completion: any()).then({ completion in
                let url = URL(string: self.mockUrlString)
                completion(url, nil)
            }))
        }
    }
    
    func setUpFirebaseStorageReferenceStub() {
        stub(mockFIRStorage) { (mock) in
            _ = when(mock.storageReference().thenReturn(mockStorageRef))
        }
    }
    
}
