
import FirebaseDatabase
import Foundation

class DatabaseRetrievableImplementation: DatabaseRetrievable {
    func databaseService() -> DatabaseReference? {
        return Database.database().reference()
    }
}
