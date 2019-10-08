//
//  Music.swift
//  MusicPlayer
//
//  Created by rau4o on 7/21/19.
//  Copyright © 2019 rau4o. All rights reserved.
//

import UIKit

class Music {
    
    var id: String?
    var name: String?
    var category: String?
    var imageName: String?
    
    init(name: String,imageName: String) {
        self.name = name
        self.imageName = imageName
    }
    
//    init(data: [String: Any]) {
//        self.name = data["name"] as? String ?? ""
//        self.imageName = data["pictureUrl"] as? String ?? ""
//    }
//    static func modelToData(music: Music) -> [String: Any] {
//        let data: [String: Any] = [
//            "name": music.name!,
//            "pictureUrl": music.imageName!,
//        ]
//        return data
//    }
    
}
