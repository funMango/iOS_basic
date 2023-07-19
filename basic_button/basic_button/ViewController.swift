//
//  ViewController.swift
//  basic_button
//
//  Created by 이민호 on 2023/07/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblLable: UILabel!
    @IBOutlet var btn_click: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn_click.layer.cornerRadius = 10
        lblLable.text = "반갑습니다."
    }

    @IBAction func btn_change(_ sender: UIButton) {
        if lblLable.text == "반갑습니다." {
            btn_click.backgroundColor = .yellow
            btn_click.setTitleColor(.black, for: .normal)
            lblLable.text = "안녕하세요."
        } else {
            btn_click.backgroundColor = .blue
            btn_click.setTitleColor(.white, for: .normal)
            lblLable.text = "반갑습니다."
        }
    }
}

