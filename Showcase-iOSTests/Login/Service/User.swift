import Foundation

class User: Equatable {

    // MARK: Properties

    let email: String

    // MARK: Opertaions

    init(email: String) {
        self.email = email
    }
    
    static func == (lhs: User, rhs: User) -> Bool {
        return lhs.email == rhs.email
    }

}
