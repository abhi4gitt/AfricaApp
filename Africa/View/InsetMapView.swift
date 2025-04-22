//
//  InsetMapView.swift
//  Africa
//
//  Created by Abhishek on 22/04/25.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599),
            span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0)
        )
    )
    
    var body: some View {
        Map(position: $position)
            .overlay(
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundColor(Color.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                        
                    } //: HSTACK
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .cornerRadius(8)
                    )
                } //: NAVIGATION
                    .padding(12)
                , alignment: .topTrailing
            )
            .frame(height: 256)
            .cornerRadius(12)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    InsetMapView()
        .padding()
}

