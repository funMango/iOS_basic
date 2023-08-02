//
//  ViewController.swift
//  Table
//
//  Created by 이민호 on 2023/08/01.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var moviesArray: [Movie] = []
    
    var movieDataManager = DataManager()
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    func setUp() {
        tableView.dataSource = self
        tableView.rowHeight = 120
        
        movieDataManager.makeMovieData()
        moviesArray = movieDataManager.getMovieData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        
        let movie = moviesArray[indexPath.row]
        
        cell.mainImgView.image = movie.movieImg
        cell.movieNameLabel.text = movie.movieName
        cell.descriptionLabel.text = movie.movieDescription
        cell.selectionStyle = .none
        
        return cell
    }
}
