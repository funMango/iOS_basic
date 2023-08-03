//
//  ViewController.swift
//  Table
//
//  Created by 이민호 on 2023/08/01.
//

import UIKit

class ViewController: UIViewController {
    
    var movieDataManager = DataManager()
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    func setUp() {
        tableView.dataSource = self
        tableView.rowHeight = 120
        
        tableView.delegate = self
        
        movieDataManager.makeMovieData()
    }
    
    
    @IBAction func addBtnTapped(_ sender: UIBarButtonItem) {
        movieDataManager.updateMovieData()
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieDataManager.getMovieData().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        
        let movie = movieDataManager.getMovieData()[indexPath.row]
        
        cell.mainImgView.image = movie.movieImg
        cell.movieNameLabel.text = movie.movieName
        cell.descriptionLabel.text = movie.movieDescription
        cell.selectionStyle = .none
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       performSegue(withIdentifier: "toDetail", sender: indexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            let detailVC = segue.destination as! DetailViewController
            
            let indexPath = sender as! IndexPath
            
            detailVC.movieData = movieDataManager.getMovieData()[indexPath.row]
        }
    }
}
