import Foundation

class ShowcaseAppViewModel {

    // MARK: Properties

    var showcaseApp: ShowcaseApp

    var client: String? {
        return showcaseApp.client
    }

    var functionality: String? {
        return showcaseApp.functionality
    }

    var iconUrl: String? {
        return showcaseApp.iconUrl
    }

    var id: String? {
        return showcaseApp.id
    }

    var industry: String? {
        return showcaseApp.industry
    }

    var screenshots: [String]? {
        return showcaseApp.screenshots ?? [String]()
    }

    var shortDescription: String? {
        return showcaseApp.shortDescription
    }

    var technologyUsed: String? {
        return showcaseApp.technologyUsed
    }

    var name: String? {
        return showcaseApp.name
    }

    var iosPackageName: String? {
        return showcaseApp.iosPackageName
    }

    init(with showcaseApp: ShowcaseApp) {
        self.showcaseApp = showcaseApp
    }

}
