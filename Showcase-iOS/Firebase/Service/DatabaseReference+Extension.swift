
import FirebaseDatabase
import Foundation

extension DatabaseReference: DataReferenceable {
    func databaseReference() -> DataReferenceable {
         return Database.database().reference()
    }
}
