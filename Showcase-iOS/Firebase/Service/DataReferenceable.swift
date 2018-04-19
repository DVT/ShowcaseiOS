
import FirebaseDatabase
import Foundation

protocol DataReferenceable {
    func child(path: String) -> DataReferenceable
}
