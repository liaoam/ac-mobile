//
//  BorderButton.swift
//  ACMobile
//
//  
//  Copyright © 2018 Alex Liao. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    // Gives UIButtons with BorderButton class a white colored border with a width of 1.0px
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.white.cgColor
    }

}
