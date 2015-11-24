//
//  GradientViewThree.swift
//  BREATHEv2
//
//  Created by Jordan Olson on 11/18/15.
//  Copyright © 2015 JPRODUCTION. All rights reserved.
//

import Foundation
import UIKit
import QuartzCore


private var _blueColorLight: UIColor! = UIColor.init(red: 197/255, green: 202/255, blue: 233/255, alpha: 1)
private var _blueColorMid: UIColor! = UIColor.init(red: 121/255, green: 134/255, blue: 203/255, alpha: 1)
private var _blueColorDark: UIColor! = UIColor.init(red: 48/255, green: 63/255, blue: 159/255, alpha: 1)



var blueColorLight: UIColor {
    return _blueColorLight
}

var blueColorMid: UIColor {
    return _blueColorMid
}

var blueColorDark: UIColor {
    return _blueColorDark
}


//STOP WORKING ON IT IT LOOKS GREAT W THIS ANIMATION
//ONLY COLOR CHANGE

class GradientViewThree: UIView {
    
    let gradientLayer: CAGradientLayer = {
        
        let gradientOne = CAGradientLayer()
        
        gradientOne.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientOne.endPoint = CGPoint(x: 1.0, y: 1.0)
        
        let colors = [blueColorLight.CGColor, blueColorMid.CGColor, blueColorDark.CGColor]
        gradientOne.colors = colors
        
        
        let locations = [0.0, 0.25, 0.75]
        gradientOne.locations = locations
        
        return gradientOne
        
    }()
    
    
    override func didMoveToWindow() {
        layer.addSublayer(gradientLayer)
        let gradientAnimation = CABasicAnimation(keyPath: "locations")
        gradientAnimation.duration = 10.0
        gradientAnimation.repeatCount = Float.infinity
        gradientAnimation.fromValue = [0.0, 0.75, 1.0]
        gradientAnimation.toValue = [0.0, 0.25, 0.5]
        gradientAnimation.autoreverses = true
        gradientLayer.addAnimation(gradientAnimation, forKey: nil)
        
    }
    
    override func layoutSubviews() {
        gradientLayer.frame = CGRect(x: -bounds.size.width, y: bounds.origin.y, width: 4 * bounds.size.width, height: 5 * bounds.size.width)
        
    }
    
}
