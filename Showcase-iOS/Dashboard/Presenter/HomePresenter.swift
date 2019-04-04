import Foundation
import UIKit

class HomePresenter: HomePresentable {

    // MARK: Properties

    var showcaseAppViewModels: [ShowcaseAppViewModel] = [ShowcaseAppViewModel]()
    var homePresenterViewable: HomePresenterViewable?
    var homePresenterInteractable: HomePresenterInteractable?
    var wireframe: WireframeDelegate?
    var firebaseStorage: FIRStoring?
    var signOutInteractor: SignOutInteractor?
    var analyticManager: AnalyticsManager?
    var userDefaults: UserDefaultsProtocol?
    private var imagesDictionary: [String: URL] = [:]

    // MARK: Operation(s)

    func fetchShowcaseApps() {
        self.homePresenterViewable?.startLoadingAnimation()
        self.homePresenterInteractable?.fetchShowcaseApps()
    }

    func fetchAllImages(for showcaseAppViewModels: [ShowcaseAppViewModel],
                        completed: @escaping (([String: URL]) -> ())) {
        guard let firebaseStorage = firebaseStorage else {
            completed(self.imagesDictionary)
            return
        }
        let imageFetcher = ImageFetcher(from: firebaseStorage)
        if showcaseAppViewModels.isEmpty {
            completed(self.imagesDictionary)
        } else {
            showcaseAppViewModels.forEach { showcaseApp in
                if let showcaseAppIconURL = showcaseApp.iconUrl, let showcaseID = showcaseApp.id {
                    imageFetcher.fetchImage(showcaseAppIconURL, { (imageURL, error) in
                        if let _ = error {
                            self.imagesDictionary[showcaseID] = nil
                        } else if let imageURL = imageURL {
                            self.imagesDictionary[showcaseID] = imageURL
                        }
                        completed(self.imagesDictionary)
                    })
                }
            }
        }
    }

    func onFetchShowcaseAppsSuccess(with showcaseApps: [ShowcaseApp]) {
        var showcaseAppViewModel = [ShowcaseAppViewModel]()
        showcaseApps.forEach { showcaseApp in
            showcaseAppViewModel.append(ShowcaseAppViewModel(with: showcaseApp))
        }
        self.homePresenterViewable?.stopLoadingAnimation()
        self.showcaseAppViewModels = showcaseAppViewModel
        self.homePresenterViewable?.showOnSuccess(with: showcaseAppViewModel)
    }

    func onFetchShowcaseAppsFailure(with error: DatabaseError) {
        self.homePresenterViewable?.stopLoadingAnimation()
        self.homePresenterViewable?.showOnFailure(with: error)
    }

    func search(text: String?) -> [ShowcaseAppViewModel] {
        var filteredShowcaseAppsViewModels = [ShowcaseAppViewModel]()
        guard let searchText = text, searchText.count > 0 else {
            return self.showcaseAppViewModels
        }
        let showcaseApps = self.showcaseAppViewModels.filter {
            showcaseApp in
            guard let filtered = showcaseApp.client?.lowercased().contains(searchText.lowercased()) else {
                return false
            }
            return filtered
        }
        filteredShowcaseAppsViewModels = showcaseApps        
        return filteredShowcaseAppsViewModels
    }

    func  transitionToShowcaseAppDetailView(with showcaseAppViewModel: ShowcaseAppViewModel) {
        guard let controller = homePresenterViewable as? HomeViewController else {
            return
        }
        self.wireframe?.transitionToShowcaseAppDetailView(controller, with: showcaseAppViewModel)
    }

    func signOutUser() {
        signOutInteractor?.signOut()
    }

    func signedOut() {
        userDefaults?.set(value: false, forKey: UserDefaultsKeys.isLoggedIn.rawValue)
        guard let homeViewController = homePresenterViewable as? HomeViewController else {
            return
        }
        wireframe?.transitionToLoginView(homeViewController)
    }

    func trackDidSelectApplication(application: String) {
        analyticManager?.trackSelectionOfApplication(applicationName: application)
    }

    func trackButtonTap(analyticTag: AnalyticTag) {
        analyticManager?.trackButtonTap(buttonName: analyticTag.rawValue)
    }

    func trackScreenDidAppear(analyticTag: AnalyticTag) {
        analyticManager?.trackScreenAppear(screenName: analyticTag.rawValue)
    }

}
