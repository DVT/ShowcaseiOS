
import FirebaseStorage
import Foundation

protocol StorageReferenceable {
    func child(from path: String) -> StorageReferenceable
    func downloadImageUrl(completion: @escaping (URL?, Error?) -> Void)
}
