//
//  ExerciseViewController.swift
//  BREATHEv2
//
//  Created by Jordan Olson on 11/18/15.
//  Copyright © 2015 JPRODUCTION. All rights reserved.
//

import UIKit
import AVFoundation




class ExerciseViewController: UIViewController {

    @IBOutlet weak var inhaleExhaleLbl: UILabel!
    @IBOutlet weak var repeatCountLbl: UILabel!
    @IBOutlet weak var finishedExerciseView: UIView!
    @IBOutlet weak var exitBtn: UIButton!
    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var circularProgressView: KDCircularProgress!
    
    let pathOne = NSBundle.mainBundle().pathForResource("bongoSound", ofType: "aif")!
    var soundEffectAudioPlayerOne: AVAudioPlayer!
    var exerciseSelectedData = BreathingExercises.init()
    var timer = NSTimer()
    var timeNumberOfRepeats = 0
    var times = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        circularProgressView.angle = 0
        startBtn.layer.cornerRadius = 8.0
        finishedExerciseView.layer.cornerRadius = 10.0
        
        let edgePan = UIScreenEdgePanGestureRecognizer(target: self, action: "swipeRightToExit:")
        edgePan.edges = .Left
        view.addGestureRecognizer(edgePan)
    }
    
    @IBAction func startBtnPressed(sender: AnyObject?) {
        
        inhaleExhaleLbl.hidden = false
        repeatCountLbl.hidden = false
        startBtn.hidden = true
        finishedExerciseView.hidden = true
        
        startTimer(exerciseSelectedData)
        
    }
    
    @IBAction func exitBtnPressed(sender: AnyObject?) {
        audioSignal = true
        performSegueWithIdentifier("backToMainFromExercise", sender: nil)
    }
    
    func swipeRightToExit(recognizer: UIScreenEdgePanGestureRecognizer) {
        if recognizer.state == .Recognized {
            audioSignal = true
            timer.invalidate()
            circularProgressView.stopAnimation()
            performSegueWithIdentifier("backToMainFromExercise", sender: nil)
        }
    }
    
    func startAudio() {
        do {
            soundEffectAudioPlayerOne = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: pathOne))
            soundEffectAudioPlayerOne.prepareToPlay()
            soundEffectAudioPlayerOne.play()
            
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }
    
    func stopAudio() {
        if soundEffectAudioPlayerOne.playing {
            soundEffectAudioPlayerOne.stop()
        } else {
            soundEffectAudioPlayerOne.play()
        }
    }

    
    func durationOfProgress() -> NSTimeInterval {
        let startingValue = exerciseSelectedData.inTime
        let holdingValue = exerciseSelectedData.holdTime
        let endingValue = exerciseSelectedData.outTime
        
         let valuesComputed: NSTimeInterval = (startingValue + holdingValue + endingValue )
        return valuesComputed
    }
    
    func increaseCircularProgress() {
       
        circularProgressView.animateFromAngle(0, toAngle: 360, duration: durationOfProgress()) { (Bool) -> Void in
            self.circularProgressView.animateFromAngle(0, toAngle: 360, duration: self.durationOfProgress(), completion: nil)
        }
    }
    
    func getNumberOfRepeats() {
       
        timeNumberOfRepeats = exerciseSelectedData.repeatNumber
        repeatCountLbl.text = "\(timeNumberOfRepeats)"
        times += 1
        repeatCountLbl.text = "\(timeNumberOfRepeats - self.times)"
    }
    
    func finishedExercise() {
        
        inhaleExhaleLbl.hidden = true
        repeatCountLbl.hidden = true
        finishedExerciseView.hidden = false
    }
    
    
    func startTimer(sender: AnyObject?) {
        
        
        timer = NSTimer.scheduledTimerWithTimeInterval(exerciseSelectedData.inTime, target: self, selector: "timerDidHold:", userInfo: "Inhale", repeats: false)
        
        getNumberOfRepeats()
        increaseCircularProgress()
        inhaleExhaleLbl.text = timer.userInfo as? String
        
        if times == timeNumberOfRepeats + 1 {
            timer.invalidate()
            circularProgressView.stopAnimation()
            finishedExercise()
        }
    }
    
    
    func timerDidHold(sender: AnyObject?) {
        timer = NSTimer.scheduledTimerWithTimeInterval(exerciseSelectedData.holdTime, target: self, selector: "timerDidEnd:", userInfo: "Hold the breath", repeats: false)
        
        if exerciseSelectedData.holdTime != 0 {
            inhaleExhaleLbl.text = timer.userInfo as? String
            startAudio()
        }
    }
    
    
    func timerDidEnd(sender: NSTimer) {
        timer = NSTimer.scheduledTimerWithTimeInterval(exerciseSelectedData.outTime, target: self, selector: "startTimer:", userInfo: "Exhale", repeats: false)
        
        startAudio()
        inhaleExhaleLbl.text = timer.userInfo as? String
        
    }
    
//    func restartTimer(var timer: NSTimer) {
//        timer = NSTimer.scheduledTimerWithTimeInterval(exerciseSelectedData.repeatNumber, target: self, selector: "startTimer:", userInfo: "Restart", repeats: false)
//        inhaleExhaleLbl.text = timer.userInfo as? String
//        
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

