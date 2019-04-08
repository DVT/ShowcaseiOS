import Foundation

enum ErrorMesssage: String {
    case operationNotAllowed = "Operation not allowed"
    case invalidEmail = "Invalid Email"
    case userDisabled  = "This account has been disabled. Please contact your Admin."
    case wrongPassword = "You have provided a wrong password.Please sure to provide a valid password."
    case networkError = "Couldn't sign you in due to a network error."
    case userNotFound = "User not found.Please make sure you provide correct information."
    case defaultErrorMessage = "Unknown error occured."
}
