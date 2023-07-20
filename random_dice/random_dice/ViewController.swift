//
//  ViewController.swift
//  random_dice
//
//  Created by 이민호 on 2023/07/19.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var diceImgView_right: UIImageView!
    @IBOutlet var diceImgView_left: UIImageView!
    
    // 이미지리터럴 사용법의 변경
    // #imageLiteral(
    // 샵 이미지 L(대문자) 리터럴 소괄호열기
    
    var diceImgs: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func roll(_ sender: UIButton) {
        diceImgView_left.image = diceImgs.randomElement()
        while(true) {
            let image = diceImgs.randomElement()
            if (diceImgView_left.image != image) {
                diceImgView_right.image = image
                break
            }
        }
    }
}
