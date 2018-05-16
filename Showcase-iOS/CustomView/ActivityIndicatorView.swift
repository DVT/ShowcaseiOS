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
            guard let view = self.customActivityIndicatorView else {
                return
            }
            UIApplication.shared.beginIgnoringInteractionEvents()
            self.view.addSubview(view)
            let xAxis = (Int(UIScreen.main.bounds.width) / 2)
            let yAxis = (Int(UIScreen.main.bounds.height) / 2)
            view.center = CGPoint( x: xAxis, y: yAxis)
            view.activityView.color = UIColor.blue
            view.activityView.type = .circleStrokeSpin
            view.activityTitle.text = title
            view.activityView.startAnimating()
        }
    }
    
    func stopAnimating() {
        self.onMainThread {
            self.customActivityIndicatorView?.activityView.stopAnimating()
            self.customActivityIndicatorView?.removeFromSuperview()
            UIApplication.shared.endIgnoringInteractionEvents()
        }
    }
}

