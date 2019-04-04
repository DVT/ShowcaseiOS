import XCTest
import FirebaseAuth
@testable import Showcase_iOS

class AuthErrorCodeTests: XCTestCase {

    // MARK: System under test

    var systemUnderTest: AuthErrorCode?

    // MARK: Lifecycle

    override func setUp() {
        super.setUp()
    }

    // MARK: Test(s)

    func testThatGivenAnOperationNotAllowedErrorCodeTheErrorMessageIsTheOperationNotAllowedMessage() {
        systemUnderTest = AuthErrorCode(rawValue: AuthErrorCode.operationNotAllowed.rawValue)
        XCTAssertEqual(systemUnderTest?.errorMessage, ErrorMesssage.operationNotAllowed.rawValue)
    }

    func testThatGivenAnInvalidEmailErrorCodeTheErrorMessageIsTheInvalidEmailMessage() {
        systemUnderTest = AuthErrorCode(rawValue: AuthErrorCode.invalidEmail.rawValue)
        XCTAssertEqual(systemUnderTest?.errorMessage, ErrorMesssage.invalidEmail.rawValue)
    }

    func testThatGivenAUserDisabledErrorCodeTheErrorMessageIsAUserDisabledMessage() {
        systemUnderTest = AuthErrorCode(rawValue: AuthErrorCode.userDisabled.rawValue)
        XCTAssertEqual(systemUnderTest?.errorMessage, ErrorMesssage.userDisabled.rawValue)
    }

    func testThatGivenAWrongPasswordErrorCodeTheErrorMessageIsAWrongPasswordMessage() {
        systemUnderTest = AuthErrorCode(rawValue: AuthErrorCode.wrongPassword.rawValue)
        XCTAssertEqual(systemUnderTest?.errorMessage, ErrorMesssage.wrongPassword.rawValue)
    }

    func testThatGivenANetworkErrorCodeTheErrorMessageIsANetworkErrorMessage() {
        systemUnderTest = AuthErrorCode(rawValue: AuthErrorCode.networkError.rawValue)
        XCTAssertEqual(systemUnderTest?.errorMessage, ErrorMesssage.networkError.rawValue)
    }

    func testThatGivenAUserNotFoundErrorCodeTheErrorMessageIsTheUserNotFoundMessage() {
        systemUnderTest = AuthErrorCode(rawValue: AuthErrorCode.userNotFound.rawValue)
        XCTAssertEqual(systemUnderTest?.errorMessage, ErrorMesssage.userNotFound.rawValue)
    }

    func testThatGivenAnyOtherErrorCodeTheErrorMessageIsTheDefaultErrorMessage() {
        systemUnderTest = AuthErrorCode(rawValue: 7)
        XCTAssertEqual(systemUnderTest?.errorMessage, ErrorMesssage.defaultErrorMessage.rawValue)
    }

}
