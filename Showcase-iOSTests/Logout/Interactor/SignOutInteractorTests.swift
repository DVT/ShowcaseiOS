import XCTest
import Cuckoo
@testable import Showcase_iOS

class SignOutInteractorTests: XCTestCase {

    // MARK: Mocked dependencies

    var mockHomePresenter = MockHomePresentable()
    var mockUserSignOut = MockUserSignOut()

    // MARK: System under test

    var systemUnderTest = SignOutInteractor()

    // MARK: Lifecycle

    override func setUp() {
        super.setUp()
        systemUnderTest.homePresenter = mockHomePresenter
        systemUnderTest.userSignOut = mockUserSignOut
    }

    // MARK: Test(s)

    func testThatIfTheUserSignOutMethodDoesNotthrowThenTheHomePresenterSignedOutMethodGetsInvoked() {
        stub(mockUserSignOut) { (mock) in
            _ = when(mock.signOut().thenDoNothing())
        }
        stub(mockHomePresenter) { (mock) in
            _ = when(mock.signedOut().thenDoNothing())
        }

        systemUnderTest.signOut()
        verify(mockUserSignOut, times(1)).signOut()
        verify(mockHomePresenter, times(1)).signedOut()
    }

}
