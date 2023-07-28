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
        setUp()
    }
    
    func setUp() {
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
        
        if let heightText = heightTextField.text, let weightText = weightTextField.text {
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
    
    func reset() {
        heightTextField.text = ""
        weightTextField.text = ""
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // 현재 텍스트 필드의 텍스트와 새로 입력되는 문자열을 조합하여 최종 문자열을 얻습니다.
        guard let text = textField.text else { return false }
        let finalString = (text as NSString).replacingCharacters(in: range, with: string)
        
        // 맨 앞자리가 0인지 확인합니다.
        if finalString.hasPrefix("0") {
            return false // 맨 앞자리가 0이라면 입력을 거부합니다.
        }
        
        // 숫자가 아닌 문자는 입력할 수 없게 합니다.
        let allowedCharacters = CharacterSet.decimalDigits
        let characterSet = CharacterSet(charactersIn: string)
        return allowedCharacters.isSuperset(of: characterSet)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // 두개의 텍스트필드를 모두 종료 (키보드 내려가기)
        if heightTextField.text != "", weightTextField.text != "" {
            weightTextField.resignFirstResponder()
            return true
        // 두번째 텍스트필드로 넘어가도록
        } else if heightTextField.text != "" {
            weightTextField.becomeFirstResponder()
            return true
        }
        return false
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        heightTextField.resignFirstResponder()
        weightTextField.resignFirstResponder()
    }
}

