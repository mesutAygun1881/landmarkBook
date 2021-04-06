//
//  mapView.swift
//  landmarkBook
//
//  Created by mesutAygun on 6.04.2021.
//

import SwiftUI
import MapKit

struct mapView: UIViewRepresentable {
    var coordinate : CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView, context:UIViewRepresentableContext<mapView>) {
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        
        
        MKMapView(frame: .zero)
    }
}
struct mapView_Previews: PreviewProvider {
    static var previews: some View {
        mapView(coordinate: landmarkArray[0].locationCoordiate)
    }
}
