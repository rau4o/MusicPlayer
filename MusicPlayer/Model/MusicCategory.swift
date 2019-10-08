//
//  MusicCategory.swift
//  MusicPlayer
//
//  Created by rau4o on 7/23/19.
//  Copyright © 2019 rau4o. All rights reserved.
//

import UIKit

class MusicCategory: NSObject {
    
    var name: String?
    var musics: [Music]?
    
    static func sampleMusicCategories() -> [MusicCategory] {
    
        let stories = MusicCategory()
        stories.name = "Stories"

        var musics = [Music]()

        //logic

        let demoMusic = Music()
        demoMusic.name = "Demoo"
        demoMusic.imageName = "demo"
        demoMusic.category = "Rock"
        musics.append(demoMusic)

        stories.musics = musics
        
        -----------------------
                let challenge = MusicCategory()
                challenge.name = "Challenge"
        
                var bestOldMusic = [Music]()
        
                let iosMusic = Music()
                iosMusic.name = "Apple"
                iosMusic.imageName = "ios"
                iosMusic.category = "Pop"
                bestOldMusic.append(iosMusic)
        
        
        
                challenge.musics = bestOldMusic
                bestOldMusicCategory.musics = bestOldMusic
        
                let musicc = MusicCategory()
                musicc.name = "Music"
        
                var muzonArr = [Music]()
        
                let muzon = Music()
                muzon.name = "Muzon"
                muzon.imageName = "muzon"
                muzon.category = "Jazz"
        
                muzonArr.append(muzon)
        
                musicc.musics = muzonArr
        
        -------------
        
                let classicCategory = MusicCategory()
                classicCategory.name = "Classic"
        
                var classicArray = [Music]()
        
                let classic = Music()
                classic.name = "Music 2"
                classic.imageName = "classic"
                classic.category = "Alternite Rock"
        
                classicArray.append(classic)
        
                classicCategory.musics = classicArray
        
        -----------
        
                let natureCategory = MusicCategory()
                natureCategory.name = "Nature"
        
                var natureArray = [Music]()
        
                let nature = Music()
                nature.name = "Music 3"
                nature.imageName = "nature"
                nature.category = "Pop Jazz"
        
                natureArray.append(nature)
        
                natureCategory.musics = natureArray
        
        return [stories]
        
    }
}
