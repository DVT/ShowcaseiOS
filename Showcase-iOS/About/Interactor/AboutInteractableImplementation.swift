//
//  AboutInteractableImplementation.swift
//  Showcase-iOS
//
//  Created by Sashen Pillay on 2019/03/14.
//  Copyright © 2019 DVT. All rights reserved.
//

import Foundation

class AboutInteractableImplementation: AboutInteractable {
    
    var aboutPresenter: AboutPresentable?
    var dataReference: DataReferenceable?
    
    func retrieveSocialMediaLinks() {
        let databaseReference = FirebaseRetrieverableImplementation(reference: dataReference)
        databaseReference.fetchFirebaseData(from: .about) { (snapshot, error) in
            if let error = error {
                self.aboutPresenter?.onRetrieveSocialMediaLinksFailed(with: error)
            } else if let result = snapshot as? DataSnapshotProtocol {
                if result.value != nil {
                    print(result.value)
                    let result = result.value as? [String:Any]
                    let links = SocialMediaLinks(with: result)
                    self.aboutPresenter?.onRetrieveSocialMediaLinksComplete(with: links)
                }
            }
        }
    }
}
