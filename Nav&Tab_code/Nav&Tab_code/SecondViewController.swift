//
//  SecondViewController.swift
//  Nav&Tab_code
//
//  Created by 이민호 on 2023/08/01.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
                        
        navigationController?.navigationBar.tintColor = .blue
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        title = "Second View" // Set the title for the navigation bar
    }
}
