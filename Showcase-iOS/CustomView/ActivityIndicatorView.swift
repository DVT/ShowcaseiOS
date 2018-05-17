//
//  ActivityIndicatorView.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/16.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func onMainThread(block:@escaping () -> Void) {
        DispatchQueue.main.async(execute: block)
    }
    
    var customActivityIndicatorView: CustomActivityView? {
        return CustomActivityView().instatiate()
    }

    func startAnimating(with title:String) {
        self.onMainThread {
            guard let activity = self.customActivityIndicatorView else {
                return
            }
            UIApplication.shared.beginIgnoringInteractionEvents()
            self.view.addSubview(activity)
            let xAxis = (Int(UIScreen.main.bounds.width) / 2)
            let yAxis = (Int(UIScreen.main.bounds.height) / 2)
            activity.center = CGPoint( x: xAxis, y: yAxis)
            activity.activityIndicatorView?.color = .blue
            activity.activityIndicatorView?.type = .circleStrokeSpin
            activity.loadingStatus = title
            activity.activityIndicatorView?.startAnimating()
        }
    }
    
    func stopAnimating() {
        self.onMainThread {
            self.customActivityIndicatorView?.activityIndicatorView?.stopAnimating()
            self.customActivityIndicatorView?.removeFromSuperview()
            UIApplication.shared.endIgnoringInteractionEvents()
        }
    }
}

