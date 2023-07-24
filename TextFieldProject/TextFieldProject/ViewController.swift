//
//  ViewController.swift
//  TextFieldProject
//
//  Created by 이민호 on 2023/07/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    func setUp() {
        view.backgroundColor = UIColor.gray
        textField.keyboardType = UIKeyboardType.emailAddress
        textField.placeholder = "email을 입력해 주세요"
        textField.borderStyle = .roundedRect
        textField.clearButtonMode = .always
    }

    @IBAction func btnDoneTapped(_ sender: UIButton) {
        
    }
}
