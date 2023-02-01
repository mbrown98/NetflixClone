//
//  HomeView.swift
//  NetflixClone
//
//  Created by Matt Brown on 1/31/23.
//

import SwiftUI

struct HomeView: View {
    var vm = HomeVM()
    var body: some View {
        ZStack {
            // full screen black background
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                // main VStack
                // lazy vstack only loads views on the screen, plus 1-2 outside of view for smooth scrolling
                LazyVStack {
                    // the foreach loop needs a way to differentiate between each category, and here we are telling it that each will be unique, so swift can just use the hash of each value
                    ForEach(vm.allCategories, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(vm.getMovie(forCat: category)) { movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
