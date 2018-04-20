//
//  FireBaseDatabaseReferenceObservableImplemantation.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/04/20.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

class FireBaseDatabaseReferenceObservableImplemantation {
    private var fireBaseDatabaseReferenceObservable: FireBaseDatabaseReferenceObservable?
    typealias completionHandler = (_ result: Any?, _ error: Error?) -> Void
    
    init(_ fireBaseDatabaseReference: FireBaseDatabaseReferenceObservable) {
        self.fireBaseDatabaseReferenceObservable = fireBaseDatabaseReference
    }
    
    func child(with path: String, completion: @escaping (completionHandler)) {
        self.fireBaseDatabaseReferenceObservable?.child(path, completion: completion)
    }
}
