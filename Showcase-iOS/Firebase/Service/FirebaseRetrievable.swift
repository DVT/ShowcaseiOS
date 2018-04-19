
import FirebaseDatabase
import Foundation

protocol FirebaseRetrievable {
    func database() -> DataReferenceable
}
