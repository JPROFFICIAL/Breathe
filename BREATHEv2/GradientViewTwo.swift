//
//  GradientViewTwo.swift
//  BREATHEv2
//
//  Created by Jordan Olson on 11/18/15.
//  Copyright © 2015 JPRODUCTION. All rights reserved.
//

import Foundation
import UIKit
import QuartzCore


private var _detailColorOne: UIColor! = UIColor.init(red: 1, green: 213/255, blue: 79/255, alpha: 1)
private var _detailColorTwo: UIColor! = UIColor.init(red: 1, green: 193/255, blue: 7/255, alpha: 1)
private var _detailColorThree: UIColor! = UIColor.init(red: 1, green: 160/255, blue: 0, alpha: 1)



var detailColorOne: UIColor {
    return _detailColorOne
}

var detailColorTwo: UIColor {
    return _detailColorTwo
}

var detailColorThree: UIColor {
    return _detailColorThree
}


//STOP WORKING ON IT IT LOOKS GREAT W THIS ANIMATION
//ONLY COLOR CHANGE
    
    class GradientViewTwo: UIView {
        
        let gradientLayer: CAGradientLayer = {
            
            let gradientOne = CAGradientLayer()
            
            gradientOne.startPoint = CGPoint(x: 0.0, y: 0.0)
            gradientOne.endPoint = CGPoint(x: 1.0, y: 1.0)
            
            let colors = [detailColorOne.CGColor, detailColorTwo.CGColor, detailColorThree.CGColor]
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


