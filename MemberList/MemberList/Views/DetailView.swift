//
//  DetailView.swift
//  MemberList
//
//  Created by 이민호 on 2023/08/08.
//

import UIKit

class DetailView: UIView {
    //MARK: - UI구현
    
    let mainImageView: UIImageView = {
        let imgView = UIImageView()
        imgView.backgroundColor = .lightGray
        imgView.clipsToBounds = true
        imgView.layer.cornerRadius = 75
        imgView.translatesAutoresizingMaskIntoConstraints = false
        return imgView
    }()
    
    lazy var imgContainView: UIView = {
        let view = UIView()
        view.addSubview(mainImageView)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // memberId
    let memberIdLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.text = "멤버번호:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let memberIdTextField: UITextField = {
        let tf = UITextField()
        tf.frame.size.height = 22
        tf.textColor = .black
        tf.borderStyle = .roundedRect
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    lazy var memberIdStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [memberIdLabel, memberIdTextField])
        stack.spacing = 5
        stack.axis = .horizontal
        stack.distribution = .fill
        stack.alignment = .fill
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    // name
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.text = "멤버번호:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let nameTextField: UITextField = {
        let tf = UITextField()
        tf.frame.size.height = 22
        tf.textColor = .black
        tf.borderStyle = .roundedRect
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    lazy var nameStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [nameLabel, nameTextField])
        stack.spacing = 5
        stack.axis = .horizontal
        stack.distribution = .fill
        stack.alignment = .fill
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    // age
    let ageLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.text = "멤버번호:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let ageTextField: UITextField = {
        let tf = UITextField()
        tf.frame.size.height = 22
        tf.textColor = .black
        tf.borderStyle = .roundedRect
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    lazy var ageStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [ageLabel, ageTextField])
        stack.spacing = 5
        stack.axis = .horizontal
        stack.distribution = .fill
        stack.alignment = .fill
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    // phoneNumber
    let phoneNumberLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.text = "멤버번호:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let phoneNumberTextField: UITextField = {
        let tf = UITextField()
        tf.frame.size.height = 22
        tf.textColor = .black
        tf.borderStyle = .roundedRect
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    lazy var phoneNumberStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [ageLabel, ageTextField])
        stack.spacing = 5
        stack.axis = .horizontal
        stack.distribution = .fill
        stack.alignment = .fill
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    // address
    let addressLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.text = "멤버번호:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let addressTextField: UITextField = {
        let tf = UITextField()
        tf.frame.size.height = 22
        tf.textColor = .black
        tf.borderStyle = .roundedRect
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    lazy var addressStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [ageLabel, ageTextField])
        stack.spacing = 5
        stack.axis = .horizontal
        stack.distribution = .fill
        stack.alignment = .fill
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let btn_save: UIButton = {
        let btn = UIButton(type: .custom)
        btn.backgroundColor = .systemBlue
        btn.setTitle("UPDATE", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.frame.size.height = 40
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [imgContainView, memberIdStackView, nameStackView, ageStackView, phoneNumberStackView, addressStackView, btn_save])
        stack.spacing = 10
        stack.axis = .vertical
        stack.distribution = .fill
        stack.alignment = .fill
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
}
