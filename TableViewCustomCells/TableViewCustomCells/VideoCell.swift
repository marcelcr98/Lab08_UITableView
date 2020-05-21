//
//  VideoCell.swift
//  TableViewCustomCells
//
//  Created by mbtec22 on 5/20/20.
//  Copyright © 2020 Tecsup. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {

    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    func setVideo(video: Video){
        videoImageView.image = video.image
        videoTitleLabel.text = video.title
    }
}
