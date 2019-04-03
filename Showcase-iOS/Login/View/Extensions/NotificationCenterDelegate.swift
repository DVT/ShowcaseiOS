import Foundation

protocol NotificationCenterDelegate: class {
    func removeObserver(_ observer: Any)
    func addObserver(_ observer: Any, selector: Selector, name: NSNotification.Name?, object: Any?)
    func post(_ notification: Notification)
}

extension NotificationCenter: NotificationCenterDelegate {}
