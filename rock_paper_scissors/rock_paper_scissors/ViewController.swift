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
    
    var comChoice: Rps = Rps(rawValue: Int.random(in: 0...2))!
    var myChoice: Rps = Rps.rock
            
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func rpsButtonTapped(_ sender: UIButton) {
//        guard let title = sender.currentTitle else {
//            return
//        }
        
        let title = sender.currentTitle!
        print(title)
        
        switch title {
        case "가위":
            myChoice = Rps.scissors
        case "바위":
            myChoice = Rps.rock
        case "보":
            myChoice = Rps.paper
        default:
            break
        }
    }            
    
    @IBAction func btn_reset(_ sender: UIButton) {
        gameResult.text = "선택하세요."
        imgView_left.image = #imageLiteral(resourceName: "ready")
        imgView_right.image = #imageLiteral(resourceName: "ready")
        computer.text = "준비"
        human.text = "준비"
        comChoice = Rps(rawValue: Int.random(in: 0...2))!
    }
    
    
    @IBAction func btn_select(_ sender: UIButton) {
        switch comChoice {
        case .rock:
            imgView_left.image = #imageLiteral(resourceName: "rock")
            computer.text = "바위"
        case .paper:
            imgView_left.image = #imageLiteral(resourceName: "paper")
            computer.text = "보"
        case .scissors:
            imgView_left.image = #imageLiteral(resourceName: "scissors")
            computer.text = "가위"
        }
        
        switch myChoice {
        case .rock:
            imgView_right.image = #imageLiteral(resourceName: "rock")
            human.text = "바위"
        case .paper:
            imgView_right.image = #imageLiteral(resourceName: "paper")
            human.text = "보"
        case .scissors:
            imgView_right.image = #imageLiteral(resourceName: "scissors")
            human.text = "가위"
        }
        
        if comChoice == myChoice {
            gameResult.text = "비겼습니다."
        } else if comChoice == .rock && myChoice == .paper {
            gameResult.text = "이겼습니다."
        } else if comChoice == .paper && myChoice == .scissors {
            gameResult.text = "이겼습니다."
        } else if comChoice == .scissors && myChoice == .rock {
            gameResult.text = "이겼습니다."
        } else {
            gameResult.text = "졌습니다."
        }
        
        comChoice = Rps(rawValue: Int.random(in: 0...2))!
    }
}

