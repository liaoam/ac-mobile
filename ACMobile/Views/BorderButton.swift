//
//  BorderButton.swift
//  ACMobile
//
//  Created by Alex Liao on 4/9/18.
//  Copyright © 2018 Alex Liao. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.white.cgColor
    }

}
