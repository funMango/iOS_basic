//
//  ViewController.swift
//  basic_button
//
//  Created by 이민호 on 2023/07/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblLable: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblLable.text = "반갑습니다."
    }

    @IBAction func btn_change(_ sender: UIButton) {
        if lblLable.text == "반갑습니다." {
            lblLable.text = "안녕하세요."
        } else {
            lblLable.text = "반갑습니다."
        }
    }
}

