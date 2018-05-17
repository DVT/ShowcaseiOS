//
//  CustomActivityView.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/16.
//  Copyright © 2018 DVT. All rights reserved.
//

import UIKit
import NVActivityIndicatorView

class CustomActivityView: UIView {

    @IBOutlet private weak var activityView: NVActivityIndicatorView!
    @IBOutlet private weak var activityTitle: UILabel!
    
    var loadingStatus: String? {
        didSet {
            self.activityTitle.text = loadingStatus
        }
    }
    
    var activityIndicatorView: NVActivityIndicatorView? {
        return activityView
    }
    
    func instatiate() -> CustomActivityView {
        return UINib(nibName: "CustomActivityView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! CustomActivityView
    }
}
