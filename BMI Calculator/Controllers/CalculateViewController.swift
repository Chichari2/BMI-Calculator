//
//  CalculateViewController.swift
//  BMI Calculator
//
//  Created by Артем Вологдин on 16.11.23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var resultCalculateBrain = CalculateBrains()
    
    
    
    
    @IBOutlet weak var heightLable: UILabel!

    @IBOutlet weak var heightSliderOutlet: UISlider!
    
    @IBOutlet weak var weightSliderOutlet: UISlider!
    
    @IBOutlet weak var weihgtLable: UILabel!
    

    
   
    
    @IBAction func heightSlider(_ sender: UISlider) {
        
        let hight =  "\(String(format: "%.2f", arguments: [sender.value]))m"
        heightLable.text = hight
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let weight =  "\(String(format: "%.2f", arguments: [sender.value]))Kg"
        weihgtLable.text = weight
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: (Any)?) {
        
        
        
        if segue.identifier == "showResultVC"{
            let destination = segue.destination as! ResultViewController
            destination.value = resultCalculateBrain.getValue()
            destination.advice = resultCalculateBrain.getAdvice()
            destination.color = resultCalculateBrain.getColor()
            
        }
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        
        let height = heightSliderOutlet.value
        let weight = weightSliderOutlet.value
        
        
        resultCalculateBrain.calculateBMI(height, weight)
        
        performSegue(withIdentifier: "showResultVC", sender: Any?.self)
    }
    
//    @IBAction func calculatePressed(_ sender: UIButton) {
//            let height = heightSlider.value
//            let weight = weightSlider.value
//
//            calculatorBrain.calculateBMI(height: height, weight: weight)
//            performSegue(withIdentifier: "goToResult", sender: self)
//            
//        }
//        
//        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            if segue.identifier == "goToResult" {
//                let destinationVC = segue.destination as! ResultViewController
//                destinationVC.bmiValue = calculatorBrain.getBMIValue()
//                destinationVC.advice = calculatorBrain.getAdvice()
//                destinationVC.color = calculatorBrain.getColor()
//            }
//        }
//    
    
    
    
    
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

