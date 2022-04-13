//
//  Album.swift
//  ElasticHeader0413
//
//  Created by 张亚飞 on 2022/4/13.
//

import SwiftUI

struct Album: Identifiable {
    
    var id = UUID().uuidString
    var albumName: String
    var albumImage: String
    var isLiked: Bool = false
}

var albums: [Album] = [

    Album(albumName: "Positions", albumImage: "p1"),
    Album(albumName: "The Best", albumImage: "p2"),
    Album(albumName: "My Everything", albumImage: "p3", isLiked: true),
    Album(albumName: "Yours Truly", albumImage: "p4"),
    Album(albumName: "Sweetener", albumImage: "p5", isLiked: true),
    Album(albumName: "Rain On me", albumImage: "p6", isLiked: true),
    Album(albumName: "Stuck With U", albumImage: "p7"),
    Album(albumName: "7 rings", albumImage: "p8"),
    Album(albumName: "Bang Bang", albumImage: "p9")
]
