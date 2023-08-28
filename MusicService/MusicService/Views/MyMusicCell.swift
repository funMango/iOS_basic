//
//  MyMusicCell.swift
//  MusicService
//
//  Created by 이민호 on 2023/08/28.
//

import UIKit

class MyMusicCell: UITableViewCell {

    @IBOutlet var img_main: UIImageView!
    
    @IBOutlet var lbl_songName: UILabel!
    
    @IBOutlet var lbl_artistName: UILabel!
    
    @IBOutlet var lbl_albumName: UILabel!
    
    @IBOutlet var lbl_releaseDate: UILabel!    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
