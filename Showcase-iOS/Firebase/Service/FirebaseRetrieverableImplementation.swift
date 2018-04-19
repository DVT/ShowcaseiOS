
import FirebaseDatabase
import Foundation

class FirebaseRetrieverableImplementation: FirebaseRetrievable {
    func firebaseRetriever(path: String) -> DatabaseReference? {
        return databaseService()?.child(path)
    }
    
    func databaseService() -> DatabaseReference? {
        return Database.database().reference()
    }
}
