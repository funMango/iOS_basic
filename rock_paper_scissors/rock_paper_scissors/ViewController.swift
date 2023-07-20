//
//  ViewController.swift
//  rock_paper_scissors
//
//  Created by 이민호 on 2023/07/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var human: UILabel!
    @IBOutlet var computer: UILabel!
    @IBOutlet var imgView_right: UIImageView!
    @IBOutlet var imgView_left: UIImageView!
    @IBOutlet var gameResult: UILabel!
    
    var rpsArray : [UIImage] = [#imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "paper"), #imageLiteral(resourceName: "ready")]
    var comSelect : Int = -1
    var humanSelect : Int = -1
    
    let rock = 0, scissors = 1, papaer = 2
    let rpsText : [String] = ["바위", "가위", "보"]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        comSelect = Int.random(in: 0...2)
    }


    @IBAction func scissors(_ sender: UIButton) {
        humanSelect = 1
        imgView_right.image = rpsArray[humanSelect]
        human.text = "가위"
    }
    
    
    @IBAction func rock(_ sender: UIButton) {
        humanSelect = 0
        imgView_right.image = rpsArray[humanSelect]
        human.text = "바위"
    }
    
    
    @IBAction func paper(_ sender: UIButton) {
        humanSelect = 2
        imgView_right.image = rpsArray[humanSelect]
        human.text = "보"
    }
    
    
    @IBAction func btn_reset(_ sender: UIButton) {
        imgView_left.image = rpsArray[3]
        imgView_right.image = rpsArray[3]
        computer.text = "준비"
        human.text = "준비"
    }
    
    
    @IBAction func btn_select(_ sender: UIButton) {
        let result : [String] = ["이겼습니다.", "졌습니다.", "비겼습니다."]
        imgView_left.image = rpsArray[comSelect]
        computer.text = rpsText[comSelect]
        
        if (comSelect == 0) {
            if (humanSelect == 2) {
                gameResult.text = result[0]
            } else if(humanSelect == 1) {
                gameResult.text = result[1]
            } else {
                gameResult.text = result[2]
            }
        } else if (comSelect == 1) {
            if (humanSelect == 0) {
                gameResult.text = result[0]
            } else if(humanSelect == 2) {
                gameResult.text = result[1]
            } else {
                gameResult.text = result[2]
            }
        } else {
            if (humanSelect == 1) {
                gameResult.text = result[0]
            } else if(humanSelect == 2) {
                gameResult.text = result[1]
            } else {
                gameResult.text = result[2]
            }
        }
        
        comSelect = Int.random(in: 0...2)
    }
}

