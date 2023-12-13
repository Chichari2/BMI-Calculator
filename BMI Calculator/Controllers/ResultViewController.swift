//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Артем Вологдин on 16.11.23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var valueLable: UILabel!
    
    @IBAction func recalculateButton(_ sender: UIButton) {
    }
    @IBOutlet weak var adviceLable: UILabel!
    
    var value: String?
    var advice: String?
    var color: UIColor?
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        valueLable.text = value
        adviceLable.text = advice
        view.backgroundColor = color
        
    }
}
