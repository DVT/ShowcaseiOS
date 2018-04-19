
import FirebaseDatabase
import Foundation

//protocol DatabaseRetrievable {
//    func child(pathString: String) -> DataReference
//}

protocol DataReferenceable {
    func child(path: String) -> DataReferenceable
}
