//
//  AnalyticsManager.swift
//  Showcase-iOS
//
//  Created by Sashen Pillay on 2019/03/22.
//  Copyright © 2019 DVT. All rights reserved.
//

import Foundation
import FirebaseAnalytics

class AnalyticsManager {

    func trackButtonTap(buttonName: String) {
        let analyticTag = "button_tap_\(buttonName)"
        Analytics.logEvent(analyticTag, parameters: nil)
    }

    func trackSelectionOfApplication(applicationName: String) {
        let analyticTag = "app_selected_\(applicationName)"
        Analytics.logEvent(analyticTag, parameters: nil)
    }

    func trackScreenAppear(screenName: String) {
        let analyticTag = "screen_appear_\(screenName)"
        Analytics.logEvent(analyticTag, parameters: nil)
    }

    func trackGenericEvent(eventName: String) {
        let analyticTag = "sgeneric_\(eventName)"
        Analytics.logEvent(analyticTag, parameters: nil)
    }

}
