//
//  MovieCellTableViewCell.swift
//  Table
//
//  Created by 이민호 on 2023/08/02.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet var mainImgView: UIImageView!
    
    @IBOutlet var movieNameLabel: UILabel!
        
    @IBOutlet var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
