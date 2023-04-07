//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Muhammet BOZKURT on 7.04.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.5294117647, green: 0.8078431373, blue: 0.9803921569, alpha: 1.0))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green)        } else {
                bmi = BMI(value: bmiValue, advice: "Eat less pies", color: UIColor.red )
        }
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "Unexpected"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}

