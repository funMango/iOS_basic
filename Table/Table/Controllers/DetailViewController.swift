//
//  DetailViewController.swift
//  Table
//
//  Created by 이민호 on 2023/08/03.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imgMain: UIImageView!
    
    @IBOutlet var lblMovieName: UILabel!
        
    @IBOutlet var lblDescription: UILabel!
    
    var movieData: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    func setUp() {
        imgMain.image = movieData?.movieImg
        lblMovieName.text = movieData?.movieName
        lblDescription.text = movieData?.movieDescription
    }         
}
