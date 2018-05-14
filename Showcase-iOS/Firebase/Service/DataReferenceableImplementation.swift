
import FirebaseDatabase
import Foundation
import Swinject

struct FirebaseRetrieverableImplementation {

    private let reference : DataReferenceable?
    
    init(reference : DataReferenceable?) {
        self.reference = reference
    }
    
    func dataBaseReference() -> DataReferenceable? {
        guard let reference = reference?.databaseReference() else {
            return nil
        }
        return reference
    }
    
    func fetchFirebaseData(from path: Path, completion: @escaping (Any?, Error?) -> Void) {
        dataBaseReference()?.child(path)?.observe(eventType: .childAdded, with: { snapshot in
            completion(snapshot, nil)
        }, withCancel: { (error) in
            completion(nil, error)
        })
    }
}
