//
//  GradientViewOne.swift
//  Breathe v1
//
//  Created by Jordan Olson on 11/10/15.
//  Copyright © 2015 JPRODUCTION. All rights reserved.
//

import UIKit
import QuartzCore

private var _colorOne: UIColor! = UIColor.init(red: 156/255, green: 39/255, blue: 176/255, alpha: 1)
private var _colorTwo: UIColor! = UIColor.init(red: 206/255, green: 147/255, blue: 216/255, alpha: 1)
private var _colorThree: UIColor! = UIColor.init(red: 225/255, green: 190/255, blue: 231/255, alpha: 1)



var colorOne: UIColor {
    return _colorOne
}

var colorTwo: UIColor {
    return _colorTwo
}

var colorThree: UIColor {
return _colorThree
}


//STOP WORKING ON IT IT LOOKS GREAT W THIS ANIMATION
//ONLY COLOR CHANGE

class GradientViewOne: UIView {

    let gradientLayer: CAGradientLayer = {
        
        let gradientOne = CAGradientLayer()
        
        gradientOne.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientOne.endPoint = CGPoint(x: 1.0, y: 1.0)
        
        let colors = [colorOne.CGColor, colorTwo.CGColor, colorThree.CGColor]
        gradientOne.colors = colors
        
        
        let locations = [0.0, 0.25, 0.75]
        gradientOne.locations = locations
        
        return gradientOne
        
    }()
    
    
    
    
    override func didMoveToWindow() {
        layer.addSublayer(gradientLayer)
        let gradientAnimation = CABasicAnimation(keyPath: "locations")
        gradientAnimation.duration = 6.0
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


