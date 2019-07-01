//
//  SymptomsPossibleCell.swift
//  Progress Bar
//
//  Created by mallikarjun on 27/06/19.
//  Copyright © 2019 Mallikarjun H. All rights reserved.
//

import UIKit

class SymptomsPossibleCell: UITableViewCell {

    @IBOutlet weak var possibleConditionsLabel: UILabel!
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var frontView: UIView!
    @IBOutlet weak var percentageLabel: UILabel!
    
    @IBOutlet weak var frontViewWidthContraints: NSLayoutConstraint!
    
    @IBOutlet weak var progressViewInstance: UIProgressView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        let transform : CGAffineTransform = CGAffineTransform(scaleX: 1.0, y: 3.0)
        progressViewInstance.transform = transform
        progressViewInstance.layer.cornerRadius = 4
        progressViewInstance.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
