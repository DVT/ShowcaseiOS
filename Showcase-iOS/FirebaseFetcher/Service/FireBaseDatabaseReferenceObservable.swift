//
//  FireBaseDatabaseReferenceObservable.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/04/20.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

protocol FireBaseDatabaseReferenceObservable {    
    func child(_ path: Path, completion: @escaping (Any?, Error?) -> Void)
}
