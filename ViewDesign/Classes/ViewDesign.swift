//
//  ViewDesign.swift
//  Pods
//
//  Created by gowthamravikumar on 5/15/17.
//
//

import Foundation



extension UIView{
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    @IBInspectable var borderwidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    @IBInspectable var bordercolor: UIColor {
        get {
            return self.bordercolor
        }
        set {
            layer.borderColor = newValue.cgColor
        }
    }
}

