//
//  FirstViewController.swift
//  NextVC
//
//  Created by 이민호 on 2023/07/27.
//

import UIKit

class FirstViewController: UIViewController {
    
    lazy var mainLabel: UILabel = {
        let label = UILabel()
        label.text = someString
        label.font = UIFont.systemFont(ofSize: 22)
        return label
    }()
    
    let backButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Back", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        return button
    }()
    
    var someString: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        configureUI()
        
    }
    
    func setUp() {
        view.addSubview(mainLabel)
        view.addSubview(backButton)
        view.backgroundColor = .white
    }
    
    func configureUI() {
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc func backButtonTapped() {
        dismiss(animated: true)
    }
}
