//
//  DatabaseReference+Extention.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/04/20.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

extension FirebaseRetrieverableImplementation: FireBaseDatabaseReferenceObservable {
    
    func child(_ path: String, completion: @escaping (Any?, Error?) -> Void) {
        dataBaseReference().child(from: path).observe(eventType: .childAdded, with: { snapshot in
            completion(snapshot, nil)
        }) { (error) in
            completion(nil, error)
        }
    }
}




