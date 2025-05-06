//
//  MapView.swift
//  4030_Final
//
//  Created by Ashvij Hosdurg on 5/1/25.
//
import SwiftUI
import MapKit

struct MapView: View {
    @State var lat: Double
    @State var long: Double
    
    var body: some View {
        Map(initialPosition: .region(region))
    }
    //Using MapKit to display coordinates
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: lat, longitude: long),
            span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        )
    }
}

#Preview {
    MapView(lat: 33.75555556, long: -84.4)
}
