
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

extension FirebaseRetrieverableImplementation: FireBaseDatabaseReferenceObservable {
    func child(_ path: Path, completion: @escaping (Any?, Error?) -> Void) {
        dataBaseReference()?.child(from: path.rawValue)?.observe(eventType: .childAdded, with: { snapshot in
            completion(snapshot, nil)
        }) { (error) in
            completion(nil, error)
        }
    }
}
