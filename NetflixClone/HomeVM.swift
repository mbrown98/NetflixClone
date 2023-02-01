//
//  HomeVM.swift
//  NetflixClone
//
//  Created by Matt Brown on 1/31/23.
//

import Foundation

class HomeVM: ObservableObject {
    
    // String == Category
    // this line is creating a property "movies" which is a dictionary of string keys and movies array values, initialized to an empty dictionary
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        // looping over each key in the movie dictionary (stored locally as $0) and add it to array -> array of strings
        return movies.keys.map({ String($0) })
    }
    
    public func getMovie(forCat cat: String) -> [Movie] {
        // return movies by category, if fails return empty array
        return movies[cat] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Comedy"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["Sci-Fi Movies"] = exampleMovies.shuffled()
    }
}
