//
//  HomeInteractorImplementation.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/02.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import Firebase

class HomeInteractor: HomePresenterInteractable {
    var firebaseDatabaseReference: DataReferenceable?
    var homePresenter: HomePresentable?
    
    func fetchShowcaseApps() {
        var showcaseApps: [ShowcaseApp] = [ShowcaseApp]()
        let databaseReference = FirebaseRetrieverableImplementation(reference: self.firebaseDatabaseReference)
        databaseReference.fetchFirebaseData(from: .apps) { snapshot, error in
            if error != nil {
                self.homePresenter?.onFetchShowcaseAppsFailure(with: .childNotFound)
            } else {
                let result = snapshot as? DataSnapshot
                if result?.value != nil {
                    let office = result?.value as? [String: Any]
                    showcaseApps.append(ShowcaseApp(with: office))
                }
                self.homePresenter?.onFetchShowcaseAppsSuccess(with: showcaseApps)
            }
        }
    }
}
