//
//  Landmark.swift
//  Landmarks
//
//  Created by Md. Saber Hossain on 2/6/20.
//  Copyright © 2020 Md. Saber Hossain. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Coordinates: Hashable, Codable {
    let latitude: Double
    let longitude: Double
}

struct Landmark: Hashable, Codable, Identifiable {
    
    enum Category: String, CaseIterable, Codable, Hashable{
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
    }
    
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var park: String
    var category: Category
    var locationCoordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: coordinates.latitude,
                                      longitude: coordinates.longitude)
    }
    
    var isFavorite : Bool
}

extension Landmark{
    var image: Image {
        return ImageStore.shared.image(name: imageName)
    }
}
