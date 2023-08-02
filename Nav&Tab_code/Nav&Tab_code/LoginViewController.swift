//
//  ViewController.swift
//  Nav&Tab_code
//
//  Created by 이민호 on 2023/08/01.
//

import UIKit

class LoginViewController: UIViewController {
    
    private lazy var loginBtn: UIButton = {
        let btn = UIButton(type: .custom)
        btn.setTitle("Login", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action:  #selector(loginBtnTapped), for: .touchUpInside)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        makeUI()
    }
    
    func makeUI() {
        view.backgroundColor = .white
        view.addSubview(loginBtn)
        
        NSLayoutConstraint.activate([   
            loginBtn.widthAnchor.constraint(equalToConstant: 120),
            loginBtn.heightAnchor.constraint(equalToConstant: 45),
            loginBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginBtn.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
    @objc func loginBtnTapped() {
        dismiss(animated: true)
    }
}

