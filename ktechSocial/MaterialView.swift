//
//  MaterialView.swift
//  DreamLister
//
//  Created by Kovan Azeez on 9/9/16.
//  Copyright © 2016 Kovan Azeez. All rights reserved.
//  this extension for anything that we assign as a UIview then vew can add this effect to it by selecting masterialDesign = yes, then this will be applied to our design

import UIKit


private var cornerRadius = false

extension UIImageView {
    
    @IBInspectable var materialDesignRadius : Bool {
        
        get{
            return cornerRadius
            
        } set {
            cornerRadius = newValue
            
            if cornerRadius {
                self.layer.cornerRadius = 40
                
            } else {
                self.layer.cornerRadius = 0
            }
        }
    }
}

private var shadowAppear = false
extension UIImageView {
    
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

