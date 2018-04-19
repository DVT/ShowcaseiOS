
import FirebaseDatabase
import Foundation

protocol DatabaseRetrievable {
    func databaseService() -> DatabaseReference?
}

