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
    
    var height: Double?
    var weight: Double?
    
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
            
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == heightTextField {
            if let heightValue = Double(textField.text ?? "") {
                height = heightValue
            } else {
                height = nil
            }
        } else if textField == weightTextField {
            if let weightValue = Double(textField.text ?? "") {
                weight = weightValue
            } else {
                weight = nil
            }
        }
    }
    
    @IBAction func calculateBtnTapped(_ sender: UIButton) {
        // 입력된 값을 저장하기 위해 텍스트 필드가 편집 상태를 끝냅니다.
        heightTextField.resignFirstResponder()
        weightTextField.resignFirstResponder()
        
        if let heightValue = Double(heightTextField.text ?? ""), let weightValue = Double(weightTextField.text ?? "") {
            height = heightValue
            weight = weightValue
            
            // 데이터 전달
            if let resultVC = storyboard?.instantiateViewController(withIdentifier: "resultVC") as? ResultViewController {
                resultVC.bmiResult = caculateBMI()
                // 화면 이동
                present(resultVC, animated: true, completion: nil)
            }
            
            reset()
        } else {
            // 유효하지 않은 입력에 대한 알림창 표시하기
            let alert = UIAlertController(title: "유효하지 않은 입력", message: "키와 몸무게에 유효한 숫자 값을 입력해주세요.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "확인", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
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
        heightTextField.text = nil
        weightTextField.text = nil
        height = nil
        weight = nil
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

