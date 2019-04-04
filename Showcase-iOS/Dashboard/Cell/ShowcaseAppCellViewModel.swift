import Foundation

struct  ShowcaseAppCellViewModel {

    func getImageURL(_ showcaseViewModel: ShowcaseAppViewModel, _ imageDictionary: [String : URL]) -> URL? {
        var imageURL: URL?
        if let showcaseAppID = showcaseViewModel.id {
            if let url = imageDictionary[showcaseAppID] {
                imageURL = url
            }
        }
        return imageURL
    }

}
