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

    @IBOutlet weak var activityView: NVActivityIndicatorView!
    @IBOutlet weak var activityTitle: UILabel!
    
    func instatiate() -> CustomActivityView {
        return UINib(nibName: "CustomActivityView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! CustomActivityView
    }
}
