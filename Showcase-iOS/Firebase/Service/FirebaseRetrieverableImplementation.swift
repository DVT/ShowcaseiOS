
import FirebaseDatabase
import Foundation

class FirebaseRetrieverableImplementation: FirebaseRetrievable {

    func firebaseRetriever(path: String) -> DatabaseRetrievable? {
        return self.firebaseRetriever(path:) as! DatabaseRetrievable
    }
}
