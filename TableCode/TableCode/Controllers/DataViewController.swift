//
//  DataViewController.swift
//  TableCode
//
//  Created by 이민호 on 2023/08/04.
//

import UIKit

class DetailViewController: UIViewController {

    var imgMain: UIImageView!
    
    var lblMovieName: UILabel!
        
    var lblDescription: UILabel!
    
    var movieData: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    func setUp() {
        imgMain.image = movieData?.movieImg
        lblMovieName.text = movieData?.movieName
        lblDescription.text = movieData?.movieDescription
        
        // Auto Layout을 사용하여 constraint를 설정
            imgMain.translatesAutoresizingMaskIntoConstraints = false
            lblMovieName.translatesAutoresizingMaskIntoConstraints = false
            lblDescription.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                // imgMain constraint 설정
                imgMain.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
                imgMain.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                imgMain.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                imgMain.heightAnchor.constraint(equalToConstant: 200),
                
                // lblMovieName constraint 설정
                lblMovieName.topAnchor.constraint(equalTo: imgMain.bottomAnchor, constant: 16),
                lblMovieName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                lblMovieName.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                
                // lblDescription constraint 설정
                lblDescription.topAnchor.constraint(equalTo: lblMovieName.bottomAnchor, constant: 8),
                lblDescription.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                lblDescription.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                lblDescription.bottomAnchor.constraint(lessThanOrEqualTo: view.bottomAnchor, constant: -16),
            ])
    }
}
