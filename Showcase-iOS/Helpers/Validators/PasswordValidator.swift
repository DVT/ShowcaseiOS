import Foundation

struct PasswordValidator {
    func isValid(_ password: String) -> Bool {
        return password.count > 1
    }

}
