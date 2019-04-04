import Foundation
import FirebaseStorage

extension Storage: FIRStoring {
    func storageReference() -> StorageReferenceable? {
        return Storage.storage().reference()
    }
}
