
import FirebaseDatabase
import Foundation

class DatabaseReferenceableImplementation: DatabaseReferenceable {
    func database() -> DataReference {
        return Database.database().reference()
    }
    
}
