//
//  ViewController.swift
//  random_dice
//
//  Created by 이민호 on 2023/07/19.
//

import UIKit

class ViewController: UIViewController {
    let diceImgs = ["black1","black2","black3","black4","black5"]
    
    @IBOutlet var diceImgView_right: UIImageView!
    @IBOutlet var diceImgView_left: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImgView_left.image = UIImage(named: diceImgs[0])
        diceImgView_right.image = UIImage(named: diceImgs[0])
    }
    
    @IBAction func roll(_ sender: UIButton) {
        let diceImg_left = diceImgs[Int.random(in: 0..<5)]
        let diceImg_right = diceImgs[Int.random(in: 0..<5)]
        diceImgView_left.image = UIImage(named: diceImg_left)
        diceImgView_right.image = UIImage(named: diceImg_right)
    }
}
