import Foundation

class SocialMediaLinks {

    // MARK: Properties

    var twitter: String?
    var facebook: String?
    var instagram: String?
    var website: String?

    // MARK: Opertaion(s)

    init(with snapShotValue: [String: Any]?) {
        twitter = snapShotValue?["twitter"] as? String
        facebook = snapShotValue?["facebook"] as? String
        instagram = snapShotValue?["instagram"] as? String
        website = snapShotValue?["website"] as? String
    }

}
