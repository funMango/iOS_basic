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
        
        textField.keyboardType = UIKeyboardType.numberPad
    }

    @IBAction func btnDoneTapped(_ sender: UIButton) {
        
    }
}
