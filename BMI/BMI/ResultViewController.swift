//
//  ResultViewController.swift
//  BMI
//
//  Created by 이민호 on 2023/07/27.
//

import UIKit

class ResultViewController: UIViewController {
        
    @IBOutlet var lblBmiResult: UILabel!
    @IBOutlet var lblBmiSubResult: UILabel!
    
    var bmiResult: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        comfirmBmiStatus()
    }
    
    func setUp() {
        lblBmiResult.layer.cornerRadius = 8.0 // 원하는 반지름 값으로 설정
        lblBmiResult.layer.masksToBounds = true // 레이어의 경계를 벗어나는 부분을 잘라냅니다.
    }
    
    func comfirmBmiStatus() {
        guard let bmiValue = bmiResult else { return }
        lblBmiResult.text = String(format: "%.2f", bmiValue)
                    
        let bmiStatus: BMIStatus

        if bmiValue < 18.5 {
            bmiStatus = .underweight
        } else if bmiValue >= 18.5 && bmiValue < 25 {
            bmiStatus = .normalWeight
        } else if bmiValue >= 25 && bmiValue < 30 {
            bmiStatus = .overweight
        } else {
            bmiStatus = .obesity
        }

        lblBmiResult.backgroundColor = bmiStatus.backgroundColor
        lblBmiSubResult.text = bmiStatus.description
    }
    
    
    @IBAction func recalculateTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
