	//
//  VideoListScreen.swift
//  TableViewCustomCells
//
//  Created by mbtec22 on 5/20/20.
//  Copyright © 2020 Tecsup. All rights reserved.
//
import Foundation
import UIKit
import AssetsLibrary

class VideoListScreen: UIViewController {
    
    var videos: [Video] = []
    @IBOutlet weak var tableCiew: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videos = createArray()
        
        
    }
    
    func createArray() -> [Video]{
        
        var tempVideos: [Video] = []
        
        let video1 = Video(image:#imageLiteral(resourceName: "1"), title: "Grand Theft Auto V")
        let video2 = Video(image: #imageLiteral(resourceName: "2"), title: "Age Of Empires 2: Definitive Edition")
        let video3 = Video(image:#imageLiteral(resourceName: "3"), title: "Left 4 Dead 2")
        let video4 = Video(image:#imageLiteral(resourceName: "4"), title: "PUBG Lite")
        
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video4)
        
        return tempVideos
        
        
    }

}
    
    extension VideoListScreen: UITableViewDataSource, UITableViewDelegate{
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return videos.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let video = videos[indexPath.row]
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
            
            
            cell.setVideo(video: video)
            
            return cell
        }
        
        
    }
