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
    
    @IBOutlet weak var progessViewInstance: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.\
        
       greenViewWitthConstraints.constant = (self.backbrounView.frame.size.width - 37) * 0.2
        
        let transform : CGAffineTransform = CGAffineTransform(scaleX: 1.0, y: 3.0)
        progessViewInstance.transform = transform
        progessViewInstance.layer.cornerRadius = 5
        progessViewInstance.progress = 0.2
    }
    


}

