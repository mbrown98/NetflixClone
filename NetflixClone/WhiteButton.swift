//
//  WhiteButton.swift
//  NetflixClone
//
//  Created by Matt Brown on 2/7/23.
//

import SwiftUI

struct WhiteButton: View {
    var imageName: String
    var text: String
    
    
    // trailing closure swift syntax
    var action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            HStack {
                Spacer()
                Image(systemName: imageName)
                    .font(.headline)
                
                Text(text)
                    .bold()
                    .font(.system(size: 16))
                
                Spacer()
            }
            .padding(.vertical, 6)
            .foregroundColor(.black)
            .background(.white)
            .cornerRadius(3.0)
        })
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            WhiteButton(imageName: "play.fill", text: "Play") {
                print("pressed")
            }
        }
   
    }
}
