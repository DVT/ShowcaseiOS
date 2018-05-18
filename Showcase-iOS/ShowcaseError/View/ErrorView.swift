//
//  ErrorView.swift
//  Showcase-iOS
//
//  Created by Kagiso Mohajane on 2018/05/16.
//  Copyright © 2018 DVT. All rights reserved.
//

import UIKit

class ErrorView: UIView {

    //MARK: @IBOutlets
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var actionButton: UIButton!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var title: UILabel!
    
    // MARK: - Properties
   
    var errorMessage: String = "" {
        didSet {
            title.textColor = UIColor.DvtBlueColor
            message.textColor = UIColor.gray
            message.text = errorMessage
        }
    }
    
    var onActionButtonTouched: (() -> Void)? {
        didSet {
            actionButton.isHidden = onActionButtonTouched == nil
        }
    }
    
    // MARK: - Lifecycle
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        Bundle.main.loadNibNamed("ErrorView", owner: self, options: nil)
        addSubviewPinnedToEdges(contentView)
        actionButton.roundCorners()
    }

}
