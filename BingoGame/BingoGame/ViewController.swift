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
    
    var computer : Int? = 0
    var myNumber : Int? = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblNumber.text = "선택하세요"
        lblResult.text = ""
        computer = Int.random(in: 1...10)
    }
    
    @IBAction func btn_number(_ sender: UIButton) {
        guard let selected = sender.currentTitle else {return}
        lblNumber.text = selected
        myNumber = Int(selected)
    }
    
    @IBAction func btn_reset(_ sender: UIButton) {
        computer = Int.random(in: 1...10)
        lblNumber.text = "선택하세요"
        lblResult.text = ""
    }

    @IBAction func btn_select(_ sender: UIButton) {
        if let number = myNumber {
            lblNumber.text = String(number)
        } else { return }
        
        if let computer = computer, let myNumber = myNumber {
            if computer > myNumber {
                lblResult.text = "UP"
            } else if computer < myNumber {
                lblResult.text = "DOWN"
            } else {
                lblResult.text = "BINGO"
            }
        } else { return }
    }
}

