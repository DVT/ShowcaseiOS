import XCTest
@testable import Showcase_iOS

class EmailValidatorTests: XCTestCase {

    // MARK: System under test

    var systemUnderTest = EmailValidator()

    // MARK: Lifecycle

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    // MARK: Tests

    func testThatAnEmailAddressWhichIsValidGetsValidByEmailValidator() {
        let isEmailValidated = systemUnderTest.isValid("testEmail@gmail.com")
        XCTAssertTrue(isEmailValidated)
    }

    func testThatAnEmptyEmailDoesNotGetValidated() {
        let isEmptyStringValidated = systemUnderTest.isValid("")
        XCTAssertFalse(isEmptyStringValidated)
    }

    func testThatAnEmailWithoutThePeriodSignDoesNotGetValidated() {
        let isEmailValidated = systemUnderTest.isValid("testEmail@gmailcom")
        XCTAssertFalse(isEmailValidated)
    }

    func testThatAnEmailWithoutTheAtSignDoesNotGetValidated() {
        let isEmailValidated = systemUnderTest.isValid("testEmailgmail.com")
        XCTAssertFalse(isEmailValidated)
    }

    func testThatAnEmailWithLessThanTwoCharactersAfterThePeriodDoesNotGetValidated() {
        let isEmailValid = systemUnderTest.isValid("testEmail@gmail.c")
        XCTAssertFalse(isEmailValid)
    }

}
