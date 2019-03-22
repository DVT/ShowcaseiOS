import XCTest
import Cuckoo
@testable import Showcase_iOS

class SignOutInteractorTests: XCTestCase {

     // MARK: System under test

    var interactorUnderTest = SignOutInteractor()

     // MARK: Mocked dependencies

    var mockHomePresenter = MockHomePresentable()
    var mockUserSignOut = MockUserSignOut()

     // MARK: Lifecycle

    override func setUp() {
        super.setUp()
        interactorUnderTest.homePresenter = mockHomePresenter
        interactorUnderTest.userSignOut = mockUserSignOut
    }

    override func tearDown() {
        super.tearDown()
    }

     // MARK: Test(s)

    func testThatIfTheUserSignOutMethodDoesNotthrowThenTheHomePresenterSignedOutMethodGetsInvoked() {
        stub(mockUserSignOut) { (mock) in
            _ = when(mock.signOut().thenDoNothing())
        }
        stub(mockHomePresenter) { (mock) in
            _ = when(mock.signedOut().thenDoNothing())
        }

        interactorUnderTest.signOut()
        verify(mockUserSignOut, times(1)).signOut()
        verify(mockHomePresenter, times(1)).signedOut()
    }

}
