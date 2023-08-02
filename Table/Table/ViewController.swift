//
//  ViewController.swift
//  Table
//
//  Created by 이민호 on 2023/08/01.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellIdentifier", for: indexPath)
            
        // 데이터 설정 등의 작업
        cell.textLabel?.text = "Row \(indexPath.row) in Section \(indexPath.section)"
        
        return cell
    }
}

