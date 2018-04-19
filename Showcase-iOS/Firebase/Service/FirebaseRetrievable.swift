
import FirebaseDatabase
import Foundation

protocol FirebaseRetrievable {
    func firebaseRetriever(path: String) -> DatabaseRetrievable?
}
