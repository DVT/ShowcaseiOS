
import FirebaseDatabase
import Foundation

class FirebaseRetrieverableImplementation: FirebaseRetrievable {
    func database() -> DataReferenceable {
        return Database.database().reference()
    }
}
