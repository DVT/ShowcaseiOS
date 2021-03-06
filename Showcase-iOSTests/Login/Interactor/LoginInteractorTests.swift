import XCTest
import Cuckoo
@testable import Showcase_iOS

class LoginInteractorTests: XCTestCase {

    // MARK: Mocked dependencies

    var mockLoginPresenter = MockLoginInteractorPresentable()
    var mockUserAuthenticator = MockLoginAuthenticating()

    // MARK: System under test

    var systemUnderTest: LoginInteractor!

    // MARK: Lifecycle

    override func setUp() {
        super.setUp()
        systemUnderTest = LoginInteractor()
        systemUnderTest.userAuthenticator = mockUserAuthenticator
        systemUnderTest.loginPresenter = mockLoginPresenter
    }

    // MARK: Test(s)

    func testThatTheSignedInSuccesfullyMethodOfTheLoginPresenterGetsCalledWhenUserIsAuthorized() {
        stub(mockLoginPresenter) { (mock) in
            let _ = when(mock.signedInSuccessfully().thenDoNothing())
        }
        stub(mockUserAuthenticator) { (mock) in
            let _ = when(mock.signIn(withEmail: anyString(), password: anyString(), completion: any()).then({ (email, password, completion) in
                let fakeUserResults = MockAuthDataResultProtocol()
                completion(fakeUserResults, nil)
            }))
        }
        systemUnderTest.signIn(withEmail: "", password: "")
        verify(mockLoginPresenter, times(1)).signedInSuccessfully()
    }

    func testThatTheSignInFailedMethodOfTheLoginPresenterGetsCalledWhenUserIsNotAuthorized() {
        stub(mockLoginPresenter) { (mock) in
            let _ = when(mock.failedToSign(withError: any()).thenDoNothing())
        }
        stub(mockUserAuthenticator) { (mock) in
            let _ = when(mock.signIn(withEmail: anyString(), password: anyString(), completion: any()).then({ (email, password, completion) in
                let error = NSError(domain: "someError_forNow", code: 1, userInfo: nil)
                completion(nil, error)
            }))
        }
        systemUnderTest.signIn(withEmail: "", password: "")
        verify(mockLoginPresenter, times(1)).failedToSign(withError: any())
    }

}
