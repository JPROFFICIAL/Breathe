//
//  ViewController.swift
//  BREATHEv2
//
//  Created by Jordan Olson on 11/13/15.
//  Copyright © 2015 JPRODUCTION. All rights reserved.
//

import UIKit
import AVFoundation

var audioSignal = false
var audioPlayer = AVAudioPlayer()

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var exercises = [BreathingExercises]()
    
    let pathOne = NSBundle.mainBundle().pathForResource("haveIForgotten", ofType: "m4a")!
    let pathTwo = NSBundle.mainBundle().pathForResource("bigSchool", ofType: "m4a")!
    let pathThree = NSBundle.mainBundle().pathForResource("dissolvingMemory", ofType: "m4a")!
    
    var isPlaying = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        setExercises()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        if audioSignal == false {
            startAudio()
        }

    }
    
    
    
    func startAudio() {

        do {
            audioPlayer = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: pathOne))
            audioPlayer.prepareToPlay()
            audioPlayer.numberOfLoops = -1
            audioPlayer.play()
            isPlaying = true
            
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }
    
    @IBAction func onTapBreathe(sender: AnyObject?) {
        if audioPlayer.playing {
            audioPlayer.pause()
            isPlaying = false
        } else {
            audioPlayer.play()
            isPlaying = true
        }
    }
    
    @IBAction func onSwipeLeft(sender: AnyObject?) {
        if audioPlayer.playing {
            audioPlayer.stop()
        do {
            audioPlayer = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: pathTwo))
            audioPlayer.prepareToPlay()
            audioPlayer.numberOfLoops = -1
            audioPlayer.play()
            isPlaying = true
            
        } catch let err as NSError {
            print(err.debugDescription)
            
            }
        }
    }

    @IBAction func onSwipeUp(sender: AnyObject) {
        if audioPlayer.playing {
            audioPlayer.stop()
            do {
                audioPlayer = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: pathOne))
                audioPlayer.prepareToPlay()
                audioPlayer.numberOfLoops = -1
                audioPlayer.play()
                isPlaying = true
            } catch let err as NSError {
                print(err.debugDescription)
                
            }
        }
    }
    
    @IBAction func onSwipeRight(sender: AnyObject?) {
        if audioPlayer.playing {
            audioPlayer.stop()
        do {
                audioPlayer = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: pathThree))
                audioPlayer.prepareToPlay()
                audioPlayer.numberOfLoops = -1
                audioPlayer.play()
                isPlaying = true
                
            } catch let err as NSError {
                print(err.debugDescription)
                
            }
        }
    }

    func setExercises() {
        
        exercises.append(equalBreathing)
        exercises.append(relaxingBreath)
        exercises.append(abdominalBreathing)
        exercises.append(stimulatingBreath)
        exercises.append(alternateNostrilBreathing)
        exercises.append(rollBreathing)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("BreatheCell", forIndexPath: indexPath) as? BreatheCell {
            
            let exerciseNames = exercises[indexPath.row]
            
            cell.configureCell(exerciseNames)
            
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let exer: BreathingExercises!
        
        exer = exercises[indexPath.row]

        performSegueWithIdentifier("ShowDetailExercise", sender: exer)
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercises.count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowDetailExercise" {
            if let DetailViewController = segue.destinationViewController as? DetailViewController {
                if let exer = sender as? BreathingExercises {
                    DetailViewController.exercises = exer
                }
            }
        }
    }
    
}

