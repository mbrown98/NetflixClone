//
//  GlobalHelpers.swift
//  NetflixClone
//
//  Created by Matt Brown on 1/31/23.
//

import Foundation

// the ! bascially says that we know this url will work, and we are ok with force unwrapping this
let exampleMovie1 = Movie(id: UUID().uuidString, name: "Dark", thumbnailURL: URL(string: "https://picsum.photos/200/301")!)
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Travelers", thumbnailURL: URL(string: "https://picsum.photos/200/302")!)
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Community", thumbnailURL: URL(string: "https://picsum.photos/200/303")!)
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Alone", thumbnailURL: URL(string: "https://picsum.photos/200/304")!)
let exampleMovie5 = Movie(id: UUID().uuidString, name: "Hannibal", thumbnailURL: URL(string: "https://picsum.photos/200/305")!)
let exampleMovie6 = Movie(id: UUID().uuidString, name: "Afterlife", thumbnailURL: URL(string: "https://picsum.photos/200/306")!)

let exampleMovies: [Movie] = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]