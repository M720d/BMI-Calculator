//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Dev Salvi on 07/08/22.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    
    mutating func getBmi(_ height : Float , _ weight : Float) {
        let bmiValue = (weight) / (height*height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more food ", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a Fiddle", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pie", color: .red )
        }
    }
    
    func getBmiValue()-> String {
        let resultBMI = String(format: "%.1f", bmi?.value ?? 0.0)
        return resultBMI
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
        
    }
}
