//
//  LoadingView.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/28.
//  Copyright © 2018 DVT. All rights reserved.
//

import UIKit

class LoadingView: UIView {
    
    @IBOutlet var contentView: UIView!
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        guard let view = Bundle.main.loadNibNamed("LoadingView", owner: self, options: nil)?.first as? UIView else { return }
        view.frame = self.bounds
        self.addSubview(view)
    }
}
