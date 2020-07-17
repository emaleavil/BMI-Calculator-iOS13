//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Emanuel Leal Vila on 17/07/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    private var bmi: BMI?
    private let defaultBMI = BMI(value: "0.0", advice: "No advice", color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    
    mutating func calculateBMI(weight: Float, height: Float) {
        let bmiValue = weight / powf(height, 2)
        bmi = getBMI(bmiValue)
    }
    
    func getBMIValue() -> BMI {
        return bmi ?? defaultBMI
    }
    
    fileprivate func getBMI(_ bmiValue: Float) -> BMI {
        let value = String(format: "%.1f", bmiValue)
        switch bmiValue {
        case 0..<18.5:
            return  BMI(value: value, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        case 0..<25:
            return BMI(value: value, advice: "Don't eat more that's ok", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        default:
            return BMI(value: value, advice: "You look like a seal", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
}
