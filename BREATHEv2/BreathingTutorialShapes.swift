//
//  BreathingTutorialShapes.swift
//  BREATHEv2
//
//  Created by Jordan Olson on 11/18/15.
//  Copyright © 2015 JPRODUCTION. All rights reserved.
//

import Foundation
import UIKit
import QuartzCore

@IBDesignable

class CircleView: UIView {
    
    
    override func drawRect(rect: CGRect) {
        let path = UIBezierPath(ovalInRect: rect)
        UIColor.init(red: 197/255, green: 202/255, blue: 233/255, alpha: 1).CGColor
        
        
        path.fill()
    }
    
    
    
}