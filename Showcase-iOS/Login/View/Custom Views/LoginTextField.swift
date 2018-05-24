//
//  LoginTextField.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/22.
//  Copyright © 2018 DVT. All rights reserved.
//

import UIKit

class LoginTextField: UITextField {
    private var insetValue: CGFloat = 10
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(origin: bounds.origin, size: CGSize(width: bounds.width, height: bounds.height + insetValue))
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(origin: bounds.origin, size: CGSize(width: bounds.width, height: bounds.height + insetValue))
    }
    
}
