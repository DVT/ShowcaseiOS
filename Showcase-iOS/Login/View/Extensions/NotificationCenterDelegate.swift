//
//  NotificationCenterDelegate.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/10.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

protocol NotificationCenterDelegate: class {
    func removeObserver(_ observer: Any)
    func addObserver(_ observer: Any, selector: Selector, name: NSNotification.Name?, object: Any?)
    func post(_ notification: Notification)
}

extension NotificationCenter: NotificationCenterDelegate {}
