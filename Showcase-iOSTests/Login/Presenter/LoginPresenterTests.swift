import XCTest
import FirebaseAuth
import Cuckoo
@testable import Showcase_iOS

class LoginPresenterTests: XCTestCase {

    // MARK: Mocked dependencies

    var mockLoginViewer = MockLoginPresenterViewable()
    var mockLoginInteractor = MockLoginPresenterInteractable()
    let mockLoginPresenter = MockLoginInteractorPresentable()
    let mockUserDefaults = MockUserDefaultsProtocol()
    var mockWireFrameDelegate = MockWireframeDelegate()

    // MARK: System under test

    var presenterUnderTest: LoginPresenter!

    // MARK: Lifecycle

    override func setUp() {
        super.setUp()
        presenterUnderTest = LoginPresenter()
        presenterUnderTest.loginViewer = mockLoginViewer
        presenterUnderTest.loginInteractor = mockLoginInteractor
        presenterUnderTest.userDefaults = mockUserDefaults
        presenterUnderTest.loginViewer = mockLoginViewer
        presenterUnderTest.wireframe = mockWireFrameDelegate
    }

    override func tearDown() {
        super.tearDown()
    }

    // MARK: Tests

    func testThatTheSignInMethodOfTheLoginInteractorGetsCalled() {
        stub(mockLoginInteractor) { (mock) in
            let _  = when(mock.signIn(withEmail: anyString(), password: anyString()).thenDoNothing())
        }
        stub(mockLoginViewer) { (mock) in
            _ = when(mock.startLoadingAnimation().thenDoNothing())
        }
        presenterUnderTest.login(withEmail: "hloks@gmail.com", password: "dbhjbdhjb")
        verify(mockLoginViewer, times(1)).startLoadingAnimation()
        verify(mockLoginInteractor, times(1)).signIn(withEmail: anyString(), password: anyString())
    }

    func testThatWhenEmailIsInvalidThenShowEmailValidationErrorIsPresented() {
        stub(mockLoginViewer) { (mock) in
            let _ = when(mock.showEmailValidationFailure(withError: any()).thenDoNothing())
        }
        presenterUnderTest.login(withEmail: "", password: "shdjk")
        verify(mockLoginViewer, times(1)).showEmailValidationFailure(withError: any())
    }

    func testThatWhenPasswordIsInvalidThenShowPasswordValidationErrorIsPresented() {
        stub(mockLoginViewer) { (mock) in
            let _ = when(mock.showPasswordValidationFailure(withError: any()).thenDoNothing())
        }
        presenterUnderTest.login(withEmail: "hloks@gmail.com", password: "")
        verify(mockLoginViewer, times(1)).showPasswordValidationFailure(withError: any())
    }

    func testThatWhenBothEmailAndPasswordAreInvalidThenAnInputValidationErrorIsPresented() {
        stub(mockLoginViewer) { (mock) in
            let _ = when(mock.showInvalidInputsFailure(withError: any()).thenDoNothing())
        }
        presenterUnderTest.login(withEmail: "", password: "")
        verify(mockLoginViewer, times(1)).showInvalidInputsFailure(withError: any())
    }

    func testWhenFailedToSignInMethodIsCalledThenTheLoginViewerShowFailureWithCorrectMessage() {
        stub(mockLoginViewer) { (mock) in
             _ = when(mock.showAuthenticationFailure(withMessage: any()).thenDoNothing())
             _ = when(mock.stopLoadingAnimation().thenDoNothing())
        }
        presenterUnderTest.failedToSign(withError: AuthenticationError.notAuthenticated)
        verify(mockLoginViewer, times(1)).stopLoadingAnimation()
        verify(mockLoginViewer, times(1)).showAuthenticationFailure(withMessage: any())
    }

    func testThatWhenSignedInSuccesfullyMethodGetsCalledThenShowSuccessIsInvoked() {
        stub(mockLoginViewer) { mock in
            _ = when(mock.showSuccess().thenDoNothing())
            _ = when(mock.stopLoadingAnimation().thenDoNothing())
        }
        
        stub(mockUserDefaults) { (mock) in
            _ = when(mock.set(value: any(), forKey: any()).thenDoNothing())
        }
        
        presenterUnderTest.signedInSuccessfully()
        verify(mockUserDefaults, times(1)).set(value: any(), forKey: any())
        verify(mockLoginViewer, times(1)).stopLoadingAnimation()
        verify(mockLoginViewer, times(1)).showSuccess()
    }

    func testThatWhenShowSuccessIfAlreadyLoggedInGetsCalledAndTheUserHasLoggedInBeforeThatTheShowSuccessWillBeInvoked() {
        stub(mockLoginViewer) { (mock) in
            let _ = when(mock.showSuccess().thenDoNothing())
        }
        
        stub(mockUserDefaults) { (mock) in
            _ = when(mock.bool(forKey: any()).thenReturn(true))
        }
        
        presenterUnderTest.showSuccesWhenUserIsAlreadyAuthenticated()
        verify(mockUserDefaults, times(1)).bool(forKey: any())
        verify(mockLoginViewer, times(1)).showSuccess()
    }

    func testThatWhenShowSuccessIfAlreadyLoggedInGetsCalledAndTheUserHasNotLoggedInBeforeThatTheShowSuccessWillNotBeInvoked() {
        stub(mockLoginViewer) { (mock) in
            let _ = when(mock.showSuccess().thenDoNothing())
        }
        
        stub(mockUserDefaults) { (mock) in
            _ = when(mock.bool(forKey: any()).thenReturn(false))
        }
        
        presenterUnderTest.showSuccesWhenUserIsAlreadyAuthenticated()
        verify(mockUserDefaults, times(1)).bool(forKey: any())
        verify(mockLoginViewer, times(0)).showSuccess()
    }

    func testThatWhenSignedInSuccesfullyMethodGetsCalledThenTheUserDefaultsValueGetsSetToTrueWithValidKeyValuePair() {
        var userDefaultsDictionary:[String: Bool] = [:]
        
        stub(mockLoginViewer) { (mock) in
            _ = when(mock.showSuccess().thenDoNothing())
            _ = when(mock.stopLoadingAnimation().thenDoNothing())
        }
        
        stub(mockUserDefaults) { (mock) in
            _ = when(mock.set(value: any(), forKey: any()).then({ (value, key) in
                userDefaultsDictionary["\(key)"] = value
            }))
        }
        presenterUnderTest.signedInSuccessfully()
        XCTAssertTrue(userDefaultsDictionary["\(UserDefaultsKeys.isLoggedIn.rawValue)"]!)
        verify(mockUserDefaults, times(1)).set(value: any(), forKey: any())
    }

    func testThatWhenLoginViewIsNotALoginViewControllerThenTransitionToMailComposerIsNotInvokedWhenOpenMailClientGetsCalled() {
        presenterUnderTest?.loginViewer = nil
        stub(mockWireFrameDelegate) { (mock) in
            _ = when(mock.transitionToMailComposer(any()).thenDoNothing())
        }
        presenterUnderTest?.openMailClient()
        verify(mockWireFrameDelegate, times(0)).transitionToMailComposer(any())
    }

    func testThatWhenLoginViewIsALoginViewControllerThenTransitionToMailComposerIsInvokedWhenOpenMailClientGetsCalled() {
        presenterUnderTest?.loginViewer = LoginViewController()
        stub(mockWireFrameDelegate) { (mock) in
            _ = when(mock.transitionToMailComposer(any()).thenDoNothing())
        }
        presenterUnderTest?.openMailClient()
        verify(mockWireFrameDelegate, times(1)).transitionToMailComposer(any())
    }

}
