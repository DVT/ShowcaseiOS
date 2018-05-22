//
//  DataSnapshotProtocol.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/21.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import FirebaseDatabase

protocol DataSnapshotProtocol {
    var value: Any? { get}
}

extension DataSnapshot: DataSnapshotProtocol {} 
