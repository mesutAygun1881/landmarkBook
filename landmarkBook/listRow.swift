//
//  listRow.swift
//  landmarkBook
//
//  Created by mesutAygun on 6.04.2021.
//

import SwiftUI

struct listRow: View {
    var landmark : cityName
    var body: some View {
        HStack{
            listImage(imageList: landmark.imageName).padding().padding()
            Text(landmark.name)
        }
    }
}

struct listRow_Previews: PreviewProvider {
    static var previews: some View {
        listRow(landmark: izmirLandmark)
    }
}
