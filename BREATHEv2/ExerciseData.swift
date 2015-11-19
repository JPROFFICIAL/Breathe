//
//  ExerciseData.swift
//  BREATHEv2
//
//  Created by Jordan Olson on 11/18/15.
//  Copyright © 2015 JPRODUCTION. All rights reserved.
//

import Foundation
import UIKit


class ExerciseData: BreathingExercises {
    
    
    var inTime: NSTimer!
    var outTime: NSTimer!
    var holdTime: NSTimer!
    
    var repeatNumber: Int!
    
    
    
    
    
    
    
    init(inTimer: NSTimer, outTimer: NSTimer, holdTimer: NSTimer, repeatNumbers: Int) {
        super.init()
        inTime = inTimer
        outTime = outTimer
        holdTime = holdTimer
        repeatNumber = repeatNumbers
    }
    
    override init() {
        super.init()
    }
    
    
    
    
}
