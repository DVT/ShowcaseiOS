

import Foundation

struct ContactableImplementation: Contactable {
    func initContact<C>(with decodableProtocol: C.Type, from jsonData: Data) -> C.Type where C : Decodable, C : Encodable {
        do {
            let results = try JSONDecoder().decode(decodableProtocol, from: jsonData)
            return results as! C.Type
        } catch let error as NSError {
            print("\(ContactableImplementation.self) failed with error: \(error.code)")
        }
}
