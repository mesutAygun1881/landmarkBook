//
//  listCity.swift
//  landmarkBook
//
//  Created by mesutAygun on 6.04.2021.
//

import SwiftUI

struct listCity: View {
    var body: some View {
        NavigationView{
        List(landmarkArray){landmark in
            NavigationLink(
                destination: detailsView(chosenLandmark: landmark))
            {
                listRow(landmark: landmark)
                }
        }
        }.navigationBarTitle("LANDBOOK")
    }
}

struct listCity_Previews: PreviewProvider {
    static var previews: some View {
        listCity()
    }
}
