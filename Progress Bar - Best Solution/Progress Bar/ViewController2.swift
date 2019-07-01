//
//  ViewController2.swift
//  Progress Bar
//
//  Created by mallikarjun on 27/06/19.
//  Copyright © 2019 Mallikarjun H. All rights reserved.
//

import UIKit

class ViewController2: UIViewController,UITableViewDelegate, UITableViewDataSource {


    var conditiosArray = ["Influenza (FLU) Adult", "Common cold", "Asthma (Teens Adult)", "Acne Sinusitis", "Viral Pneumonia"]
    var percentageArray = [60,30,87,76,51]
    
    @IBOutlet weak var mainTableView: UITableView!
    
    @IBOutlet weak var test: UIProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return conditiosArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell : SymptomsPossibleCell = tableView.dequeueReusableCell(withIdentifier: "SymptomsPossibleCellId", for: indexPath) as! SymptomsPossibleCell
        
        cell.possibleConditionsLabel.text = conditiosArray[indexPath.row]
        cell.percentageLabel.text = "\(percentageArray[indexPath.row])%"
    
        let percentageValue:Int = percentageArray[indexPath.row]
        cell.progressViewInstance.progress = Float(0.01 * Double(percentageValue))
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100.0
    }


}
