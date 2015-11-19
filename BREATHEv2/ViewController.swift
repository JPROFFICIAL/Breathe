//
//  ViewController.swift
//  BREATHEv2
//
//  Created by Jordan Olson on 11/13/15.
//  Copyright © 2015 JPRODUCTION. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var exercises = [BreathingExercises]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
       setExercises()
    }
    
    
    
//    func setNames() {
//        let exerciseNames = BreathingExercises.init().exercisesArray
//    
//            let file = exerciseNames
//            
//            for name in file {
//                let exName = name["name"]!
//                let exercise = BreathingExercises(name: exName)
//                exercises.append(exercise)
//                print(exercises)
//        }
//    }
    
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

