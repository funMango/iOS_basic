//
//  MusicCell.swift
//  MusicService
//
//  Created by 이민호 on 2023/08/22.
//

import UIKit

class MusicCell: UITableViewCell {

    @IBOutlet var imgView_main: UIImageView!
    
    @IBOutlet var lbl_musicName: UILabel!
    
    @IBOutlet var lbl_singerName: UILabel!
    
    @IBOutlet var lbl_musicContent: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
