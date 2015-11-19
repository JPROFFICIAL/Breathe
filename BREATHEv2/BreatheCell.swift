//
//  BreatheCell.swift
//  BREATHEv2
//
//  Created by Jordan Olson on 11/13/15.
//  Copyright © 2015 JPRODUCTION. All rights reserved.
//

import UIKit

class BreatheCell: UITableViewCell {

    @IBOutlet weak var exerciseName: UILabel!
    
    var exer: BreathingExercises!
    
    func configureCell(exerName: BreathingExercises) {
        
        exer = exerName
        
        exerciseName.text = exer.exerName
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
