//
//  ExerciseViewController.swift
//  BREATHEv2
//
//  Created by Jordan Olson on 11/18/15.
//  Copyright © 2015 JPRODUCTION. All rights reserved.
//

import UIKit

class ExerciseViewController: UIViewController {

    @IBOutlet weak var breathCounter: UILabel!
    @IBOutlet weak var inhaleExhaleLbl: UILabel!
    @IBOutlet weak var repeatCountLbl: UILabel!
    
    var exerciseSelectedData = BreathingExercises.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }
    
    func updateUI() {
        
        let exerciseInTime = exerciseSelectedData.inTime
        let exerciseOutTime = exerciseSelectedData.outTime
        let exerciseCounter = exerciseSelectedData.repeatNumber
        let exerciseHoldTime = exerciseSelectedData.holdTime
        
        breathCounter.text = "\(exerciseInTime)"
        breathCounter.text = "\(exerciseOutTime)"
        breathCounter.text = "\(exerciseHoldTime)"
        repeatCountLbl.text = "\(exerciseCounter)"

        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
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
