import FirebaseStorage
import Foundation

extension StorageReference: StorageReferenceable {

    func child(from path: String) -> StorageReferenceable {
       return self.child(path)
    }

    func downloadImageUrl(completion: @escaping (URL?, Error?) -> Void) {
        self.downloadURL(completion: completion)
    }

}

