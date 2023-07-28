//
//  BMICalculator.swift
//  BMI
//
//  Created by 이민호 on 2023/07/28.
//

import UIKit

struct BMICalculator {
    private var bmi: BMI?
    
    mutating func getBMI(height: String, weight: String) -> BMI {
        calculateBMI(height: height, weight: weight)
        return bmi ?? BMI(value: 0.0, advice: "문제발생", matchColor: UIColor.white)
    }
    
    
    private mutating func calculateBMI(height: String, weight: String) {
        guard let heightValue = Double(height), let weightValue = Double(weight)
        else {
            bmi = BMI(value: 0.0, advice: "문제발생", matchColor: UIColor.white)
            return
        }
        
        let heightInMeters = heightValue / 100.0
        let bmiNum = weightValue / (heightInMeters * heightInMeters)
        var bmiStatus: BMIStatus?
        
        switch bmiNum {
        case ..<18.6:
            bmiStatus = BMIStatus.underweight
        case 18.6..<25.0:
            bmiStatus = BMIStatus.normalWeight
        case 25.1..<30.0:
            bmiStatus = BMIStatus.obesity
        case 30.0...:
            bmiStatus = BMIStatus.overweight
        default:
            bmiStatus = nil
        }
            
        if let status = bmiStatus {
            bmi = BMI(value: bmiNum, advice: status.description, matchColor: status.backgroundColor)
        }
    }
}
