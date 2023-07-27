//
//  BMIStatus.swift
//  BMI
//
//  Created by 이민호 on 2023/07/27.
//

import UIKit

enum BMIStatus {
    case underweight
    case normalWeight
    case overweight
    case obesity

    var backgroundColor: UIColor {
        switch self {
        case .underweight:
            return .blue
        case .normalWeight:
            return .green
        case .overweight:
            return .orange
        case .obesity:
            return .red
        }
    }

    var description: String {
        switch self {
        case .underweight:
            return "저체중"
        case .normalWeight:
            return "정상 체중"
        case .overweight:
            return "과체중"
        case .obesity:
            return "비만"
        }
    }
}

