//
//  FirstViewController.swift
//  Nav&Tab_code
//
//  Created by 이민호 on 2023/08/01.
//

import UIKit

class FirstViewController: UIViewController {
    
    var isLoggedIn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if !isLoggedIn {
            let vc = LoginViewController()
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: false, completion: nil)
            isLoggedIn = true
        }
    }
    
    func makeUI() {
        view.backgroundColor = .gray
                        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
                        
        navigationController?.navigationBar.tintColor = .blue
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        title = "First View" // Set the title for the navigation bar
    }
}
