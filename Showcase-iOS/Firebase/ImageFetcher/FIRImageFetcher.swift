import Foundation
import Foundation

class ImageFetcher {

    // MARK: Properties

    private var imageReference: StorageReferenceable?

    // MARK: Opertaion(s)

     init(from storageService: FIRStoring) {
        imageReference = storageService.storageReference()
    }

    func fetchImage(_ image: String,_ completed: @escaping (URL?, Error?) -> Void) {
        imageReference?.child(from: image).downloadImageUrl(completion: { imageUrl, error in
            if let error = error {
                completed(nil,error)
            } else if let imageUrl = imageUrl {
                completed(imageUrl,nil)
            }
        })
    }

}
