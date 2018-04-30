    

import FirebaseDatabase
import Foundation

extension DatabaseReference: DataReferenceable {
    func databaseReference() -> DataReferenceable? {
        return Database.database().reference()
    }
    
    func child(_ path: Path) -> DataReferenceable? {
        return self.child(path.rawValue)
    }
    
    func observe(eventType: DataEventType, with snapshot: @escaping (DataSnapshot) -> Void, withCancel cancel: @escaping (Error) -> Void) {
        self.observe(eventType, with: snapshot, withCancel: cancel)
    }
}
    
    
