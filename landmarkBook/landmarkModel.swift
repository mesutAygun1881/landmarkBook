//
//  landmarkModel.swift
//  landmarkBook
//
//  Created by mesutAygun on 6.04.2021.
//

import Foundation
import SwiftUI
import CoreLocation

struct cityName : Identifiable {
    
    var id = UUID()
    var name : String
    var imageName : String
    var coutry : String
    var catagory : String
    var coordinates : Coordinates
    
    var locationCoordiate : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
}

struct Coordinates {
    
    var latitude : Double
    var longitude : Double
}


let izmirLandmark = cityName(name: "izmir", imageName: "izmir", coutry: "turkey", catagory: "tower", coordinates: Coordinates(latitude: 38.438032, longitude: 27.168287))
let ankaraLandmark = cityName(name: "ankara", imageName: "ankara", coutry: "turkey", catagory: "tower", coordinates: Coordinates(latitude: 39.930678, longitude: 32.862321))
let istanbulLandmark = cityName(name: "istanbul", imageName: "istanbul", coutry: "turkey", catagory: "tower", coordinates: Coordinates(latitude: 41.025184, longitude: 29.018009))
let erzurumLandmark = cityName(name: "erzurum", imageName: "erzurum", coutry: "turkey", catagory: "tower", coordinates: Coordinates(latitude: 39.900702, longitude: 41.276047))
let landmarkArray = [ izmirLandmark , ankaraLandmark , istanbulLandmark , erzurumLandmark]
