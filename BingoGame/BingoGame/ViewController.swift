//
//  ViewController.swift
//  BingoGame
//
//  Created by 이민호 on 2023/07/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblNumber: UILabel!
    @IBOutlet var lblResult: UILabel!
    
    var computer = Int.random(in: 1...10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblNumber.text = ""
        lblResult.text = "선택하세요"
    }
    
    @IBAction func btn_number(_ sender: UIButton) {
        guard let selected = sender.currentTitle else {return}
        lblNumber.text = selected
    }
    
    @IBAction func btn_reset(_ sender: UIButton) {
        computer = Int.random(in: 1...10)
        lblNumber.text = ""
        lblResult.text = "선택하세요"
    }

    @IBAction func btn_select(_ sender: UIButton) {
        guard let numString = lblNumber.text else {
            lblResult.text = "숫자를 입력해 주세요"
            return
        }
        
        guard let myNumber = Int(numString) else {
            lblResult.text = "숫자를 입력해 주세요"
            return
        }
        
        if computer > myNumber {
            lblResult.text = "UP"
        } else if computer < myNumber {
            lblResult.text = "DOWN"
        } else {
            lblResult.text = "BINGO"
        }
    }
}

