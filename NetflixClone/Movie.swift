//
//  Movie.swift
//  NetflixClone
//
//  Created by Matt Brown on 1/31/23.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
}
