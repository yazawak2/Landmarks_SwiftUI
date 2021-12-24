//
//  Landmark.swift
//  Landmarks
//
//  Created by Kojiro Yazawa on 2021/12/16.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool

    private var imageName: String
    var image: Image { // Computed property
        Image(imageName)
    }

    private var coordinates: Coodinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude, longitude: coordinates.longitude
        )
    }

    struct Coodinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
