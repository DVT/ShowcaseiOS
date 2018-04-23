
import FirebaseDatabase
import Foundation

protocol DataReferenceable {
    func databaseReference() -> DataReferenceable?
}

