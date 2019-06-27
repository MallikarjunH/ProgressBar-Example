//
//  ViewController.swift
//  Progress Bar
//
//  Created by mallikarjun on 27/06/19.
//  Copyright © 2019 Mallikarjun H. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var backbrounView: UIView!
    @IBOutlet weak var frontView: UIView!
    
    @IBOutlet weak var greenViewWitthConstraints: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.\
        
       greenViewWitthConstraints.constant = (self.backbrounView.frame.size.width - 37) * 0.2
    }


}

