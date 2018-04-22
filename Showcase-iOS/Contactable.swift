
import Foundation

protocol Contactable {
    
   func initContact<C>(with decodableProtocol: C.Type, from jsonData: Data) -> C.Type where C : Decodable, C : Encodable
}
