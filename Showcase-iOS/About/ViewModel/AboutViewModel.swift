import Foundation

class AboutViewModel {

    // MARK: Properties

    var socialMediaLinks: SocialMediaLinks?

    var twitter: URL? {
        let url = URL(string: socialMediaLinks?.twitter ?? "https://twitter.com/dvt_corporate")
        return url ?? nil
    }

    var facebook: URL? {
        let url = URL(string: socialMediaLinks?.facebook ?? "https://www.facebook.com/DVTSoftware")
        return url ?? nil
    }

    var instagram: URL? {
        let url = URL(string: socialMediaLinks?.instagram ?? "https://www.instagram.com/dvtsoftware/")
       return url ?? nil
    }

    var website: URL? {
        let url = URL(string: socialMediaLinks?.website ?? "https://www.dvt.co.za")
        return url ?? nil
    }

    init(socialMediaLinks: SocialMediaLinks) {
        self.socialMediaLinks = socialMediaLinks
    }

}
