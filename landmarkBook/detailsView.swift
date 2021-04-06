//
//  ContentView.swift
//  landmarkBook
//
//  Created by mesutAygun on 6.04.2021.
//

import SwiftUI

struct detailsView: View {
    var chosenLandmark : cityName
    
    var body: some View {
        VStack{
            mapView(coordinate: chosenLandmark.locationCoordiate)
                .edgesIgnoringSafeArea(.top)
                .frame( height: UIScreen.main.bounds.height * 0.4)
            
            CircleImage(image: Image(chosenLandmark.imageName))
                .offset(y:UIScreen.main.bounds.height * -0.15)
            VStack(alignment: .leading){
                Text(chosenLandmark.name)
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                HStack{
                    Text(chosenLandmark.coutry)
                        .font(.subheadline)
                    Spacer()
                    Text(chosenLandmark.catagory)
                        .font(.subheadline)
                }
            }.padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        detailsView(chosenLandmark: izmirLandmark)
    }
}
