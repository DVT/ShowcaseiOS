import Foundation
import Cuckoo
@testable import Showcase_iOS

struct GeneratedSocialMediaData {

    var mockSocialMediaResponseWithValidData: [String: Any] {
        let response: [String: Any] = ["twitter": "https://twitter.com/dvt_corporate",
                                       "facebook": "https://www.facebook.com/DVTSoftware",
                                       "website": "https://www.dvt.co.za",
                                       "instagram": "https://www.instagram.com/dvtsoftware/"]
        return response
    }

    var mockEmptySocialMediaResponse: [String: Any] {
        let response: [String: Any] = ["": ""]
        return response
    }

    var mockInvalidSocialMediaResponse: [String: Any] {
        let nilValue: Any? = nil
        let response: [String: Any] = ["twitter": nilValue as Any,
                                       "facebook": nilValue as Any,
                                       "website": nilValue as Any,
                                       "instagram": nilValue as Any]
        return response
    }

    var expectedTwitterUrl: URL {
        let url = URL(string: "https://twitter.com/dvt_corporate")
        return url!
    }

    var expectedFacebookUrl: URL {
        let url = URL(string: "https://www.facebook.com/DVTSoftware")
        return url!
    }

    var expectedInstagramUrl: URL {
        let url = URL(string: "https://www.instagram.com/dvtsoftware/")
        return url!
    }

    var expectedWebsiteUrl: URL {
        let url = URL(string: "https://www.dvt.co.za")
        return url!
    }

    var expectedSocialMediaLinks: SocialMediaLinks {
        let links = SocialMediaLinks(with: mockSocialMediaResponseWithValidData)
        return links
    }

    var expectedAboutViewModel: AboutViewModel {
        let links = expectedSocialMediaLinks
        let viewModel = AboutViewModel(socialMediaLinks: links)
        return viewModel
    }

}
