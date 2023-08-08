//
//  DetailViewController.swift
//  MemberList
//
//  Created by 이민호 on 2023/08/08.
//

import UIKit

class DetailViewController: UIViewController {
    
    private let detailView = DetailView()
    
    var member: Member?
    
    override func loadView() {
        view = detailView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtonAction()
    }
    
    func setupButtonAction() {
        detailView.btn_save.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
    }

    @objc func saveButtonTapped() {
        print("버튼이 눌림")
    }

}
