//
//  Utils.swift
//  MusicPlayer
//
//  Created by rau4o on 7/21/19.
//  Copyright © 2019 rau4o. All rights reserved.
//

import Firebase

extension Firestore {
    var musics: Query {
        return collection("StoriesEng")
    }
}
