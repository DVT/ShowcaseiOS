import Firebase
import FirebaseDatabase
import Foundation

protocol DataReferenceable {
    func databaseReference() -> DataReferenceable
    func child(from path: String) -> DataReferenceable
    func observe(eventType: DataEventType, with snapshot: @escaping (DataSnapshot) -> Void, withCancel cancel: @escaping (Error) -> Void)
}

