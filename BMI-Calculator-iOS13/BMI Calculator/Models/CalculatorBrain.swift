//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Navi Malhotra on 2023-04-06.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain{
    
    var bmi: BMI?
    
    func getBMIValue() -> String{
//        if let safeBMI = bmi {
            
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTo1DecimalPlace
            
//        }
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
         let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat More Pies!", color: UIColor.blue)
        } else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a Fiddle!", color: UIColor.green)
        }
        else{
            bmi = BMI(value: bmiValue, advice: "Eat Less Pies!", color: UIColor.red)
        }
    }
    
}
