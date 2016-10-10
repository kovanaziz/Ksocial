//
//  FancyView.swift
//  ktechSocial
//
//  Created by Kovan Azeez on 10/10/16.
//  Copyright © 2016 Kovan Azeez. All rights reserved.
//

import UIKit


class FancyView : UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.6).cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
    }

    // this make the button to be radius if we use the above method for button instead of the UIView
    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        
//        layer.cornerRadius = self.frame.width / 2
//    }
}
