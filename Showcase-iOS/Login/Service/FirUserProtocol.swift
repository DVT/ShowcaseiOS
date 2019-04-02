import Foundation
import FirebaseAuth

protocol FirUserProtocol {
    var uid: String { get}
}

extension User: FirUserProtocol {}
