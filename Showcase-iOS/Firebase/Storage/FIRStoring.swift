
import Foundation
import FirebaseStorage

protocol FIRStoring {
    func storageReference() -> StorageReferenceable?
}
