import Foundation
import FirebaseAuth

protocol AuthDataResultProtocol {
    var user: FirUserProtocol { get}
}

extension AuthDataResult: AuthDataResultProtocol {
    var user: FirUserProtocol {
        return self.user
    }
}
