//
//  TextFieldDelegateExtension.swift
//  BMI
//
//  Created by 이민호 on 2023/07/28.
//
import UIKit

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
        let allowedCharacters = CharacterSet(charactersIn: "0123456789.")
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
