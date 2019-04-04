import XCTest
@testable import Showcase_iOS

class PasswordValidatorTests: XCTestCase {

    // MARK: System under test

    let systemUnderTest = PasswordValidator()

    // MARK: Lifecycle

    override func setUp() {
        super.setUp()
    }

    // MARK: Test(s)

    func testThatAnEmptyPasswordIsNotValidated() {
        let isEmptyPasswordValidated = systemUnderTest.isValid("")
        XCTAssertFalse(isEmptyPasswordValidated)
    }

    func testThatAPasswordWithMoreThanOneCharacterIsValidated() {
        let isPasswordValidated = systemUnderTest.isValid("4w")
        XCTAssertTrue(isPasswordValidated)
    }

}
