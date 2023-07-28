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
    
    var bmiResult: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        setResult()
    }
    
    func setUp() {
        lblBmiResult.layer.cornerRadius = 8.0 // 원하는 반지름 값으로 설정
        lblBmiResult.layer.masksToBounds = true // 레이어의 경계를 벗어나는 부분을 잘라냅니다.
    }
    
    private func setResult() {
        if let bmi = bmiResult {
            lblBmiResult.text = String(format: "%.2f", bmi.value)
            lblBmiResult.backgroundColor = bmi.matchColor
            lblBmiSubResult.text = bmi.advice
        }
    }    
    
    @IBAction func recalculateTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
