//
//  circleImage.swift
//  landmarkBook
//
//  Created by mesutAygun on 6.04.2021.
//

import SwiftUI

struct CircleImage : View {
    var image : Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white))
            .shadow(radius: 15 )
     
    }
}
struct circleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("izmir"))
    }
}
