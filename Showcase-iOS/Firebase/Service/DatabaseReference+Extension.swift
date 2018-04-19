
import FirebaseDatabase
import Foundation

extension DatabaseReference: DataReferenceable {
    func child(path: String) -> DataReferenceable{
        return self.child(path)
    }
    
}
