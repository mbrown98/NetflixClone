//
//  SmallVerticalButton.swift
//  NetflixClone
//
//  Created by Matt Brown on 2/7/23.
//

import SwiftUI

struct SmallVerticalButton: View {
    
    var text: String
    var isOnImage: String
    var isOffImage: String
    var isOn: Bool
    
    var imageName: String {
        if isOn {
            return isOnImage
        }
        return isOffImage
    }
    
    
    
    
    // swift trailing closure syntax
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            VStack {
                Image(systemName: imageName)
                    .foregroundColor(.white)
                
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .bold()
            }
        })
    }
}

struct SmallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            // this is using the swift trailing closure syntax
            SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                print("tapped")
            }
        }
    }
}
