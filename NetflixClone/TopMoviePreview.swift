//
//  TopMoviePreview.swift
//  NetflixClone
//
//  Created by Matt Brown on 2/7/23.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
    
    var movie: Movie
    
    func isCategoryLast(_ cat: String) -> Bool {
        // get number of movies in category array
        let catCount = movie.categories.count
        
        // we need to use if let, becuase firstIndex returns an optional, ex categories[100000]
        // if we get an index enter the if block
        if let index = movie.categories.firstIndex(of: cat) {
            if index + 1 != catCount {
                return false
            }
        }
        return true
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
            // a pretty common approach for images
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                Spacer()
                
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        HStack {
                            
                            Text(category)
                                .font(.footnote)
                            
                            if !isCategoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }
                        }
                    }
                }
                
                HStack {
                    Spacer()
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                        //
                    }
                    Spacer()
                   
                    WhiteButton(imageName: "play.fill", text: "Play") {
                        //
                    }
                    .frame(width: 120)
                
                    Spacer()
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        //
                    }
                    Spacer()
                }
            }
            .background(
                // using our custom extension
                LinearGradient.blackOpacityGradient
                    .padding(.top, 250)
            )
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}
