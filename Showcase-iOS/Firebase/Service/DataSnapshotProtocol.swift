import Foundation
import FirebaseDatabase

protocol DataSnapshotProtocol {
    var value: Any? { get}
}

extension DataSnapshot: DataSnapshotProtocol {} 
