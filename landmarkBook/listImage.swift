//
//  listImage.swift
//  landmarkBook
//
//  Created by mesutAygun on 6.04.2021.
//

import SwiftUI

struct listImage: View {
    var imageList : String
    var body: some View {
        Image(imageList)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 50, height: 50, alignment: .leading)
    }
}

struct listImage_Previews: PreviewProvider {
    static var previews: some View {
        listImage(imageList: "izmir")
    }
}
