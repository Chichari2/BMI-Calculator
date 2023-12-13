//
//  CalculateBrains.swift
//  BMI Calculator
//
//  Created by Артем Вологдин on 16.11.23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculateBrains{
    var bmi: BMI?
    
    mutating func calculateBMI(_ height: Float, _ weight: Float){
        let bmiValue = weight/(height*height)
        
        var underWeightValue: Float = 18.5
        var overWeightValue: Float = 24.9
        
        if bmiValue < underWeightValue{
            bmi = BMI(value: bmiValue, advice: "Eat more cookies", color: .blue)
        }else if bmiValue < overWeightValue{
            bmi = BMI(value: bmiValue, advice: "All good!", color: .green)
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat less cookies", color: .orange)
        }
    }
    
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
    
    func getAdvice() -> String{
        let saveBmiAdvice = bmi?.advice ?? "Error"
        return saveBmiAdvice
    }
    
    func getValue() -> String{
        let saveBmiValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return saveBmiValue
        
//        var saveBmiValue = String(format: "%.2f", arguments: bmi?.value ?? nil)
//        return saveBmiValue
    }
    
    
}
