//
//  ViewController.swift
//  TextFieldProject
//
//  Created by 이민호 on 2023/07/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self // self = ViewController
        setUp()
    }
    
    func setUp() {
        view.backgroundColor = UIColor.gray
        textField.keyboardType = UIKeyboardType.emailAddress
        textField.placeholder = "email을 입력해 주세요"
        textField.borderStyle = .roundedRect
        textField.clearButtonMode = .always
        textField.becomeFirstResponder()
    }
    
    // 화면의 탭을 감지하는 메서드
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // 텍스트필드의 입력을 시작할대 호출 (시작할지 말지의 여부 허락하는 것)
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        
        print(#function)
        return true
    }
    
    // 시점 - 유저가 입력을 시작할때
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
        print("유저가 입력 시작")
    }
    
    // 전체 지우기 허락
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
    // 텍스트필드 글자 내용이 (한글자 한글자) 입력되거나 지워질때 호출이 되고 (허락)
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let maxLength = 20
        let currentText = textField.text ?? "" // textField의 값이 nil이 아니라면 textField의 값을 currentText에 할당하지만 nil이라면 ""를 할당
        print(range)
        let newText = (currentText as NSString).replacingCharacters(in: range, with: string)
        return newText.count <= maxLength
    }
    
    // 텍스트필드 엔터키가 눌러지면 다음 동작을 허락할것인지 말것인지
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
    // 텍스트필드의 입력이 끝날때 호출 (끝날지 말지를 허락)
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
    // 텍스트필드의 입력이 실제 끝났을때 호출 (시점)
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        print("유저가 텍스트필드의 입력을 끝냈다..")
        textField.text = ""
    }

    @IBAction func btnDoneTapped(_ sender: UIButton) {
        textField.resignFirstResponder()
    }
}
