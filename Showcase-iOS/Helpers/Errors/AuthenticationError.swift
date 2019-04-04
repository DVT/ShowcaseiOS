import Foundation

enum AuthenticationError: Error {
    case invalidEmail
    case invalidPassword
    case invalidInputs
    case notAuthenticated
}
