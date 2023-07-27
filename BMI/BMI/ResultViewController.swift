//
//  ResultViewController.swift
//  BMI
//
//  Created by 이민호 on 2023/07/27.
//

import UIKit

class ResultViewController: UIViewController {
        
    @IBOutlet var lblBmiResult: UILabel!
    @IBOutlet var lblBmiSubResult: UILabel!
    
    var bmiResult: Double?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let bmiValue = bmiResult {
            lblBmiResult.text = String(format: "%.2f", bmiValue)
        } else {
            lblBmiResult.text = "N/A"
        }
    }
    
    @IBAction func recalculateTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
