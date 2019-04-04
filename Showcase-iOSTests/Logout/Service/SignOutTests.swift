import XCTest
import Cuckoo
@testable import Showcase_iOS

class SignOutTests: XCTestCase {

    // MARK: Mocked dependencies

    var mockFirebaseSignOut = MockFirebaseSignOut()

    // MARK: System under test

    var systemUnderTest: SignOut?

    // MARK: Lifecycle

    override func setUp() {
        super.setUp()
        systemUnderTest = SignOut(mockFirebaseSignOut)
    }

    // MARK: Test(s)

    func testThatTheFirebaseSignOutMethodGetsInvokedWhenSignOutIsCalledAndDoesNotThrow() {
        var signOutThrown = false
        stub(mockFirebaseSignOut) { (mock) in
            _ = when(mock.signOut().thenDoNothing())
        }
        do {
            try  systemUnderTest?.signOut()
        } catch _ {
            signOutThrown = true
            XCTFail()
        }
        XCTAssertFalse(signOutThrown)
    }

    func testThatWhenTheFirebaseSignOutThrowsThenTheSignOutOfTheSystemUnderTestThrows() {
        var signOutThrown = false
        stub(mockFirebaseSignOut) { (mock) in
            _ = when(mock.signOut().thenThrow(NSError(domain: "error", code: 1, userInfo: nil)))
        }
        do {
            try  systemUnderTest?.signOut()
            XCTFail()
        } catch _ {
            signOutThrown = true
            XCTAssertTrue(signOutThrown)
        }
    }

}
