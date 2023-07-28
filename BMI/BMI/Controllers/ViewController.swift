//
//  ViewController.swift
//  BMI
//
//  Created by 이민호 on 2023/07/27.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var heightTextField: UITextField!
    @IBOutlet var weightTextField: UITextField!
    @IBOutlet var calculateBtn: UIButton!
        
    var bmiManager = BMICalculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        heightTextField.delegate = self
        weightTextField.delegate = self
        
        calculateBtn.clipsToBounds = true
        calculateBtn.layer.cornerRadius = 5
        heightTextField.placeholder = "cm단위로 입력해주세요."
        weightTextField.placeholder = "kg단위로 입력해주세요."
    }
    
    @IBAction func calculateBtnTapped(_ sender: UIButton) {
        heightTextField.resignFirstResponder()
        weightTextField.resignFirstResponder()
        
        if  let heightText = heightTextField.text, !heightText.isEmpty,
            let weightText = weightTextField.text, !weightText.isEmpty {
            if let resultVC = storyboard?.instantiateViewController(withIdentifier: "resultVC") as? ResultViewController {
                resultVC.bmiResult = bmiManager.getBMI(height: heightText, weight: weightText)
                present(resultVC, animated: true, completion: nil)
            }
        } else {
            let alert = UIAlertController(title: "입력 오류", message: "키와 몸무게를 입력해주세요.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "확인", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        
        reset()
    }
    
    private func reset() {
        heightTextField.text = nil
        weightTextField.text = nil
    }
}



