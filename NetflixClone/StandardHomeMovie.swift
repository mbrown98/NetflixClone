//
//  StandardHomeMovie.swift
//  NetflixClone
//
//  Created by Matt Brown on 1/31/23.
//

import SwiftUI
import KingfisherSwiftUI

struct StandardHomeMovie: View {
    var movie: Movie
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: exampleMovie1)
        // parent will be in charge of setting the size of StandardHomeView
            .frame(width: 200, height: 300)
    }
}
