//
//  ViewController.swift
//  BMI
//
//  Created by 이민호 on 2023/07/27.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var heightTextFeild: UITextField!
    @IBOutlet var weightTextFeild: UITextField!
    
    var height: Double?
    var weight: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    func setUp() {
        heightTextFeild.delegate = self
        weightTextFeild.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() // 키보드를 숨깁니다.
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == heightTextFeild {
            if let heightValue = Double(textField.text ?? "") {
                height = heightValue
            } else {
                height = nil
            }
        } else if textField == weightTextFeild {
            if let weightValue = Double(textField.text ?? "") {
                weight = weightValue
            } else {
                weight = nil
            }
        }
    }
    
    @IBAction func bmiCaculateTapped(_ sender: UIButton) {
        // 입력된 값을 저장하기 위해 텍스트 필드가 편집 상태를 끝냅니다.
        heightTextFeild.resignFirstResponder()
        weightTextFeild.resignFirstResponder()
        
        // 데이터 전달
        if let resultVC = storyboard?.instantiateViewController(withIdentifier: "resultVC") as? ResultViewController {
            resultVC.bmiResult = caculateBMI()
            // 화면 이동
            present(resultVC, animated: true, completion: nil)
        }
        
        reset()
    }
    
    func caculateBMI() -> Double {
        if let height = height, let weight = weight {
            let heightInMeters = Double(height) / 100.0 // 키를 미터로 변환
            return Double(weight) / (heightInMeters * heightInMeters)
        } else {
            return -1.0
        }
    }
    
    func reset() {
        heightTextFeild.text = nil
        weightTextFeild.text = nil
        height = nil
        weight = nil
    }
}

