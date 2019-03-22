import Foundation
import Firebase

class ShowcaseApp {

    // MARK: Properties

    var client: String?
    var functionality: String?
    var iconUrl: String?
    var id: String?
    var industry: String?
    var screenshots: [String]?
    var shortDescription: String?
    var technologyUsed: String?
    var name: String?
    var iosPackageName: String?

    // MARK: Opertaion(s)

    init(with dictionary: [String: Any]?) {
        self.client = dictionary?["client"] as? String
        self.functionality = dictionary?["functionality"] as? String
        self.iconUrl = dictionary?["iconUrl"] as? String
        self.id = dictionary?["id"] as? String
        self.industry = dictionary?["industry"] as? String
        self.screenshots = dictionary?["screenshots"] as? [String]
        self.shortDescription = dictionary?["shortDescription"] as? String
        self.technologyUsed = dictionary?["technologyUsed"] as? String
        self.name = dictionary?["name"] as? String
        self.iosPackageName = dictionary?["iosPackageName"] as? String
    }

}
