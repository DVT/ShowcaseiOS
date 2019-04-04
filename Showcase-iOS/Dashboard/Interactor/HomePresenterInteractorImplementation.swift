import Foundation
import Firebase

class HomeInteractor: HomePresenterInteractable {

    // MARK: Injectable(s)

    var firebaseDatabaseReference: DataReferenceable?
    var homePresenter: HomePresentable?

    // MARK: Opertaion(s)

    func fetchShowcaseApps() {
        var showcaseApps: [ShowcaseApp] = [ShowcaseApp]()
        let databaseReference = FirebaseRetrieverableImplementation(reference: self.firebaseDatabaseReference)
        databaseReference.fetchFirebaseData(from: .apps) { snapshot, error in
            if error != nil {
        self.homePresenter?.onFetchShowcaseAppsFailure(with: .childNotFound)
            } else {
                let result = snapshot as? DataSnapshotProtocol
                if result?.value != nil {
                    let showcaseApp = result?.value as? [String: Any]
                    showcaseApps.append(ShowcaseApp(with: showcaseApp))
                }
                self.homePresenter?.onFetchShowcaseAppsSuccess(with: showcaseApps)
            }
        }
    }

}
