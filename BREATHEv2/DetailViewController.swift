//
//  DetailViewController.swift
//  BREATHEv2
//
//  Created by Jordan Olson on 11/13/15.
//  Copyright © 2015 JPRODUCTION. All rights reserved.
//

import UIKit


class DetailViewController: UIViewController {

    @IBOutlet weak var exerName: UILabel!
    @IBOutlet weak var exerDifficulty: UILabel!
    @IBOutlet weak var exerDescription: UILabel!
    @IBOutlet weak var exerHowTo: UILabel!
    @IBOutlet weak var goToExerciseBtn: UIButton!
    
    @IBAction func goToExercise(sender: AnyObject) {
        
        
        performSegueWithIdentifier("ShowExerciseSelected", sender: exercises)
    }
    
    
    
    
    func goBackSwipe(recognizer: UIScreenEdgePanGestureRecognizer) {
        if recognizer.state == .Recognized {
            print("Screen edge swiped!")
        
        audioSignal = true
        performSegueWithIdentifier("backToMain", sender: nil)
        }
    }
    
    var exercises = BreathingExercises.init()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
        
        let edgePan = UIScreenEdgePanGestureRecognizer(target: self, action: "goBackSwipe:")
        edgePan.edges = .Left
        
        view.addGestureRecognizer(edgePan)
    
        
    }
        
    func updateUI() {
        
        let exerciseNames = exercises.exerName
        let exerciseDescription = exercises.exerDescription
        let exerciseDifficulty = exercises.exerDifficulty
        let exerciseHowTo = exercises.exerHowTo
        
        exerName.text = exerciseNames
        exerDifficulty.text = exerciseDifficulty
        exerDescription.text = exerciseDescription
        exerHowTo.text = exerciseHowTo

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    override func dismissViewControllerAnimated(flag: Bool, completion: (() -> Void)?) {
//        
//        
//    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowExerciseSelected" {
            if let ExerciseViewController = segue.destinationViewController as? ExerciseViewController {
                if let exer = sender as? BreathingExercises {
                    ExerciseViewController.exerciseSelectedData = exer
                }
            }
        }
    }

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
