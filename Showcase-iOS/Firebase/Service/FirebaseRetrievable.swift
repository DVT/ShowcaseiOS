
import FirebaseDatabase
import Foundation

protocol FirebaseRetrievable: DatabaseRetrievable {
    func firebaseRetriever(path: String) -> DatabaseReference?
}
