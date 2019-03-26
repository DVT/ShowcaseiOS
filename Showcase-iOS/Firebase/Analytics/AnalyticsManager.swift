import Foundation
import FirebaseAnalytics

protocol AnalyticsManager {
    func trackButtonTap(buttonName: String)
    func trackSelectionOfApplication(applicationName: String)
    func trackScreenAppear(screenName: String)
    func trackGenericEvent(eventName: String)
}
