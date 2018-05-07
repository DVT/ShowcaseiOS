//
//  HomeInteractorImplementation.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/02.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import Firebase

class HomeInteractorImplementation: HomePresenterInteractable {
    var firebaseDatabaseReference: DataReferenceable
    var homePresenter: HomePresentable
    
    init(with reference: DataReferenceable, and presenter: HomePresentable) {
        self.firebaseDatabaseReference = reference
        self.homePresenter = presenter
    }
    
    func fetchShowcaseApps() {
        var showcaseApps: [ShowcaseApp] = [ShowcaseApp]()
        let databaseReference = FirebaseRetrieverableImplementation(reference: self.firebaseDatabaseReference)
        databaseReference.fetchFirebaseData(from: .apps) { snapshot, error in
            if error != nil {
                self.homePresenter.onFetchShowcaseAppsFailure(with: .childNotFound)
            } else {
                let result = snapshot as? DataSnapshot
                result?.children.forEach { child in
                    showcaseApps.append(ShowcaseApp(with: child as? [String: Any]))
                }
                self.homePresenter.onFetchShowcaseAppsSuccess(with: showcaseApps)
            }
        }
    }
}
