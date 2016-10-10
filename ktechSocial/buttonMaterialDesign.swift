//
//  buttonMaterialDesign.swift
//  ktechSocial
//
//  Created by Kovan Azeez on 10/9/16.
//  Copyright © 2016 Kovan Azeez. All rights reserved.
//

import UIKit

private var shadowAppear = false
extension UIButton {
    
    @IBInspectable var materialDesignShadow : Bool {
        
        get{
            return shadowAppear
            
        } set {
            shadowAppear = newValue
            
            if shadowAppear {
                self.layer.masksToBounds = false
                self.layer.shadowOpacity = 0.8
                self.layer.shadowRadius = 3.0
                self.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
                self.layer.shadowColor = UIColor(red: 157/255, green: 157/255, blue: 157/255, alpha: 1.0).cgColor
            } else {
                self.layer.shadowOpacity = 0
                self.layer.shadowRadius = 0
                self.layer.shadowColor = nil
            }
        }
    }
    
}
