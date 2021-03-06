//
//  ViewDesign.swift
//  Pods
//
//  Created by gowthamravikumar on 5/15/17.
//
//

import Foundation


extension UIView
{
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = true
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
    
    
    func shake() {
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        animation.duration = 0.4
        animation.values = [-20.0, 20.0, -20.0, 20.0, -10.0, 10.0, -5.0, 5.0, 0.0 ]
        layer.add(animation, forKey: "shake")
    }
    
    func clearConstraints() {
        for subview in self.subviews {
            subview.clearConstraints()
        }
        self.removeConstraints(self.constraints)
    }
    
    func dropShadow() {
        
        self.layer.masksToBounds = true
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: 0, height: 1)
        self.layer.shadowRadius = 2
        self.layer.cornerRadius = 10
        self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = UIScreen.main.scale
        
        
    }
    
}


extension UITextField
{
    @IBInspectable var placeHolderColor: UIColor {
        
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string: self.placeholder!, attributes: [NSForegroundColorAttributeName : newValue])
        }
    }
    func setBottomBorder(blackColor:Bool) {
        self.borderStyle = .none
        if blackColor == true{
            self.layer.backgroundColor = UIColor.black.cgColor
        }else{
            self.layer.backgroundColor = UIColor.white.cgColor
        }
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.masksToBounds = false
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
    }
}

extension UITextView
{
    func setBottomBorder(blackColor:Bool)  {
        if blackColor == true{
            self.layer.backgroundColor = UIColor.black.cgColor
        }else{
            self.layer.backgroundColor = UIColor.white.cgColor
        }
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
    }
}

extension NSLayoutConstraint {
    /**
     Change multiplier constraint
     
     - parameter multiplier: CGFloat
     - returns: NSLayoutConstraint
     */
    func setMultiplier(multiplier:CGFloat) -> NSLayoutConstraint {
        
        NSLayoutConstraint.deactivate([self])
        
        let newConstraint = NSLayoutConstraint(
            item: firstItem,
            attribute: firstAttribute,
            relatedBy: relation,
            toItem: secondItem,
            attribute: secondAttribute,
            multiplier: multiplier,
            constant: constant)
        
        newConstraint.priority = priority
        newConstraint.shouldBeArchived = self.shouldBeArchived
        newConstraint.identifier = self.identifier
        
        NSLayoutConstraint.activate([newConstraint])
        return newConstraint
    }
}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
}


extension String {
    func isEmptyOrWhitespace() -> Bool {
        if(self.isEmpty) {
            return true
        }
        return (self.trimmingCharacters(in: CharacterSet.whitespaces) == "")
    }
    
    subscript (i: Int) -> Character {
        return Array(self.characters)[i]
    }
    
    subscript (r: CountableClosedRange<Int>) -> String {
        return String(Array(self.characters)[r])
    }
    
    subscript (r: CountableRange<Int>) -> String {
        return self[r.lowerBound...r.upperBound-1]
    }
}

extension NSDate {
    
    static func combineDate(date: NSDate, withTime time: NSDate) -> NSDate? {
        let gregorian = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)
        
        var dateComponents = gregorian?.components([.year, .month, .day], from: date as Date)
        let timeComponents = gregorian?.components([.hour, .minute, .second], from: time as Date)
        
        dateComponents?.second = timeComponents?.second ?? 0
        dateComponents?.minute = timeComponents?.minute ?? 0
        dateComponents?.hour = timeComponents?.hour ?? 0
        
        if let _ = dateComponents {
            return gregorian?.date(from: dateComponents!) as NSDate?
        }
        return nil
    }
    
}


extension Double {
    var value: String {
        return String(format: "%.2f", self)
    }
}






