//
//  ViewController.swift
//  NextVC
//
//  Created by Allen H on 2021/12/05.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // 1) 코드로 화면 이동 (다음화면이 코드로 작성되어있을때만 가능한 방법)
    @IBAction func codeNextButtonTapped(_ sender: UIButton) {
        let firstVC = FirstViewController()
        firstVC.someString = "아기상어"
        firstVC.modalPresentationStyle = .automatic
        present(firstVC, animated: true, completion: nil)        
    }
    
    // 2) 코드로 스토리보드 객체를 생성해서, 화면 이동
    @IBAction func storyboardWithCodeButtonTapped(_ sender: UIButton) {
        guard let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondVC") as? SecondViewController
        else { return }
        
        secondVC.someString = "아빠상어"
        present(secondVC, animated: true, completion: nil)
    }
    
    
    
    // 3) 스토리보드에서의 화면 이동(간접 세그웨이)
    @IBAction func storyboardWithSegueButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toThirdVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toThirdVC" {
            guard let thirdVC = segue.destination as? ThirdViewController else { return }
            thirdVC.someString = "엄마상어"
        }
        
        if segue.identifier == "toFourthVC" {
            guard let fourthVC = segue.destination as? FourthViewController else { return }
            fourthVC.someString = "이모상어"
        }
    }
    
    // 4) 스토리보드에서의 화면 이동(직접 세그웨이)
    let num = 3
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if num < 5 {
            return false
        } else {
            return true
        }
    }    
}

