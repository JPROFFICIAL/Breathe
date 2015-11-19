//
//  BreathingExercises.swift
//  BREATHEv2
//
//  Created by Jordan Olson on 11/13/15.
//  Copyright © 2015 JPRODUCTION. All rights reserved.
//

import Foundation
import UIKit


class BreathingExercises {
    
    private var _exerName: String!
    private var _exerDifficulty: String!
    private var _exerDescription: String!
    private var _exerHowTo: String!
    private var _inTime: NSTimer!
    private var _outTime: NSTimer!
    private var _holdTime: NSTimer!
    private var _repeatNumber: Int!
    
    
    var exerName: String {
        if _exerName == nil {
            _exerName = ""
        }
            return _exerName
        }
    
    var exerDifficulty: String {
        
        if _exerDifficulty == nil {
            _exerDifficulty = ""
        }
            return _exerDifficulty
        }
    
    
    var exerDescription: String {
        if _exerDescription == nil {
            _exerDescription = ""
        }
            return _exerDescription
        }
    
    var exerHowTo: String {
        if _exerHowTo == nil {
            _exerHowTo = ""
        }
            return _exerHowTo
        }
    
    var inTime: NSTimer {
        return _inTime
    }
    
    var outTime: NSTimer {
        return _outTime
    }
    
    var holdTime: NSTimer {
        return _holdTime
    }
    
    var repeatNumber: Int {
        return _repeatNumber
    }
    
    var exercisesArray = [
        ["name": "Equal", "difficulty": "Beginner", "description": "This technique can be done at any point during the day, although it is said that it is most effective at night before bed. It is sometimes compared to Counting Sheep", "howTo": "To start, inhale through your nose for a count of 4, and exhale through your nose for another count of 4. This will add natural resistance to your breath. Once mastered, you can aim for 6 to 8 counts per breath.", "inTime": "4.0", "outTime": "4.0", "holdTime": "0", "repeatNumber": "5"],
        
        ["name": "Relaxing", "difficulty": "Beginner", "description": "This technique is also one of the most simple, effective exercises. You can perform the 'Relaxing' or '4-7-8' breath anywhere, but while learning it is recommended you sit in an upright position with your back straight. Relaxing grows in power with repetition and practice so Breathe this atleast twice a day. DO NOT do more than four breaths at one time/cycle for the first month. ", "howTo": "Place the tip of your tounge against the tissue behind your front teeth and keep it there throughout the exercise. You will be exhaling from around your tounge. Exhale completely through your mouth, making a 'Whoosh' sound. Close your mouth and inhale quietly through your nose for a count of FOUR. Once there, hold your breath for a count of SEVEN, then exhale with a 'Whooshing' sound through your mouth for a count of EIGHT. That is one Breath. Repeat THREE more times for a cycle of Four.", "inTime": "4.0", "outTime": "8.0", "holdTime": "7.0", "repeatNumber": "4"],
        
        ["name": "Abdominal", "difficulty": "Beginner", "description": "A simple diaphragm exercise to reduce heart rate, and blood pressure. For a more advanced version of this exercise, refer to the 'Roll'.", "howTo": "Place your left hand on your belly and your right hand on your chest. Take a deep, slow breath through the nose ensuring the diaphragm inflates and not your chest with enough air to stretch the lungs. Try for 6 to 10 slow deep breaths per minute.", "inTime": "3.0", "outTime": "3.0", "holdTime": "0", "repeatNumber": "10"],
        
        ["name": "Alternate Nostril", "difficulty": "Intermediate", "description": "Alternate Nostril breathing brings a sense of calmness, balance, and unites both sides of your brain. It is best done when you need to focus or energize yourself. Heads up! This can be a difficult exercise to do if you have a stuffy-nose.", "howTo": "In a comfortable/meditative position, hold your right thumb over the right nostril and breathe deeply through other. At the peak of inhalation, quickly close off the left nostril with your ring finger and exhale through the right. Continue the pattern by closing off left, inhaling through right, and exhaling out left.", "inTime": "4.0", "outTime": "4.0", "holdTime": "0", "repeatNumber": "4"],
        
        ["name": "Stimulating", "difficulty": "Advanced", "description": "The Stimulating Breath, also knows as the Bellows Breath - is aimed to increase alertness and raise energy levels. If done correctly you should feel aware and full of energy as if you just completed a workout. You should feel the effects on the back of your neck, chest and abdomen.", "howTo": "Inhale and exhale through your nose rapidly, keeping your mouth closed and relaxed. Try for 3 in and 3 out cycles per second. Your breaths in and out should be as short as possible, and equal in duration. DO NOT try for more than 15 counts on your first time, and ALWAYS remember to stop and adapt the exercise if you feel light headed or start to hyperventilate. With all of the exercises, once comfortable feel free to increase your time by five seconds or so.", "inTime": "10.0", "outTime": "6", "holdTime": "0", "repeatNumber": "3"],

        ["name": "Roll", "difficulty": "Advanced", "description": "The purpose of Abdominal Roll Breathing is to use the full capacity of your lungs and find the natural rhythm in your breath. It is an adapted version of the Abdominal Breathing technique.", "howTo": "This exercise is best learned lying on your back with your knees bent. Remember to inhale through your nose, and exhale through your mouth with your shoulders relaxed. Place your left hand on your abdomen and your right hand on your chest. Inhale first into your lower lungs, and then continue inhaling into your upper chest. Exhale slowly through your mouth, making a quiet whooshing sound as your left hand falls, then your right hand. Practice this exercise for 3 to 5 minutes. The motion in your diaphragm and chest is comparable to a wave. If beginning to become light headed or hyperventilate, slow your breathing and stand up slowly.", "inTime": "6.0", "outTime": "6.0", "holdTime": "0", "repeatNumber": "6"]
        
    ]
    
    
    init(name: String, difficulty: String, description: String, howTo: String, inTimer: NSTimer, outTimer: NSTimer, holdTimer: NSTimer, repeatNumbers: Int) {
        _exerName = name
        _exerDifficulty = difficulty
        _exerDescription = description
        _exerHowTo = howTo
        _inTime = inTimer
        _outTime = outTimer
        _holdTime = holdTimer
        _repeatNumber = repeatNumbers
        
        inTimer
        
        
    }
    
    init(name: String) {
        _exerName = name
    }

    
    init() {
        
        
    }
    
    //possibly unNeeded -
    var exerciseNames = [String]()
    // End
    

    

    

}


    
//    var equalBreathing = BreathingExercises(name: "\(equalBreathingName!)", difficulty: "\(equalBreathingDifficulty!)", description: "\(equalBreathingDesc!)", howTo: "\(equalBreathingHowTo!)")
//    
//    var relaxingBreath = BreathingExercises(name: "\(relaxBreathName!)", difficulty: "\(relaxBreathDifficulty!)", description: "\(relaxBreathDesc!)", howTo: "\(relaxBreathHowTo!)")
//    
//    var abdominalBreathing = BreathingExercises(name: "\(abdBreathName!)", difficulty: "\(abdBreathDifficulty!)", description: "\(abdBreathDesc!)", howTo: "\(abdBreathHowTo!)")
//    
//    var stimulatingBreath = BreathingExercises(name: "\(stimBreathName!)", difficulty: "\(stimBreathDifficulty!)", description: "\(stimBreathDesc!)", howTo: "\(stimBreathHowTo!)")
//    
//    var alternateNostrilBreathing = BreathingExercises(name: "\(nostBreathName!)", difficulty: "\(nostBreathDifficulty!)", description: "\(nostBreathDesc!)", howTo: "\(nostBreathHowTo!)")

var equalBreathing = BreathingExercises(name: "\(equalBreathingName!)", difficulty: "\(equalBreathingDifficulty!)", description: "\(equalBreathingDesc!)", howTo: "\(equalBreathingHowTo!)", inTimer: 4.0 , outTimer: 4.0, holdTimer: 0.0, repeatNumbers: 5)

var relaxingBreath = BreathingExercises(name: "\(relaxBreathName!)", difficulty: "\(relaxBreathDifficulty!)", description: "\(relaxBreathDesc!)", howTo: "\(relaxBreathHowTo!)", inTimer: 4.0 , outTimer: 8.0, holdTimer: 7.0, repeatNumbers: 4)

var abdominalBreathing = BreathingExercises(name: "\(abdBreathName!)", difficulty: "\(abdBreathDifficulty!)", description: "\(abdBreathDesc!)", howTo: "\(abdBreathHowTo!)", inTimer: 3.0 , outTimer: 3.0, holdTimer: 0.0, repeatNumbers: 10)

var stimulatingBreath = BreathingExercises(name: "\(stimBreathName!)", difficulty: "\(stimBreathDifficulty!)", description: "\(stimBreathDesc!)", howTo: "\(stimBreathHowTo!)", inTimer: 10.0 , outTimer: 6.0, holdTimer: 0.0, repeatNumbers: 3)

var alternateNostrilBreathing = BreathingExercises(name: "\(nostBreathName!)", difficulty: "\(nostBreathDifficulty!)", description: "\(nostBreathDesc!)", howTo: "\(nostBreathHowTo!)", inTimer: 4.0 , outTimer: 4.0, holdTimer: 0.0, repeatNumbers: 4)

var rollBreathing = BreathingExercises(name: "\(rollBreathName!)", difficulty: "\(rollBreathDifficulty!)", description: "\(rollBreathDesc!)", howTo: "\(rollBreathHowTo!)", inTimer: 6.0 , outTimer: 6.0, holdTimer: 0.0, repeatNumbers: 6)

    var equalBreathingName = BreathingExercises.init().exercisesArray[0]["name"]
    var equalBreathingDifficulty = BreathingExercises.init().exercisesArray[0]["difficulty"]
    var equalBreathingDesc = BreathingExercises.init().exercisesArray[0]["description"]
    var equalBreathingHowTo = BreathingExercises.init().exercisesArray[0]["howTo"]

    var relaxBreathName = BreathingExercises.init().exercisesArray[1]["name"]
    var relaxBreathDifficulty = BreathingExercises.init().exercisesArray[1]["difficulty"]
    var relaxBreathDesc = BreathingExercises.init().exercisesArray[1]["description"]
    var relaxBreathHowTo = BreathingExercises.init().exercisesArray[1]["howTo"]


    var abdBreathName = BreathingExercises.init().exercisesArray[2]["name"]
    var abdBreathDifficulty = BreathingExercises.init().exercisesArray[2]["difficulty"]
    var abdBreathDesc = BreathingExercises.init().exercisesArray[2]["description"]
    var abdBreathHowTo = BreathingExercises.init().exercisesArray[2]["howTo"]


    var stimBreathName = BreathingExercises.init().exercisesArray[3]["name"]
    var stimBreathDifficulty = BreathingExercises.init().exercisesArray[3]["difficulty"]
    var stimBreathDesc = BreathingExercises.init().exercisesArray[3]["description"]
    var stimBreathHowTo = BreathingExercises.init().exercisesArray[3]["howTo"]


    var nostBreathName = BreathingExercises.init().exercisesArray[4]["name"]
    var nostBreathDifficulty = BreathingExercises.init().exercisesArray[4]["difficulty"]
    var nostBreathDesc = BreathingExercises.init().exercisesArray[4]["description"]
    var nostBreathHowTo = BreathingExercises.init().exercisesArray[4]["howTo"]


    var rollBreathName = BreathingExercises.init().exercisesArray[5]["name"]
    var rollBreathDifficulty = BreathingExercises.init().exercisesArray[5]["difficulty"]
    var rollBreathDesc = BreathingExercises.init().exercisesArray[5]["description"]
    var rollBreathHowTo = BreathingExercises.init().exercisesArray[5]["howTo"]











