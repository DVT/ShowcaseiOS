
import FirebaseDatabase
import Foundation
import Swinject

struct FirebaseRetrieverableImplementation {
    private let reference : DataReferenceable?
    
    init(reference : DataReferenceable) {
        self.reference = reference
    }
    
    func dataBaseReference() -> DataReferenceable? {
        guard let reference = reference?.databaseReference() else {
            return nil
        }
        return reference
    }
}
