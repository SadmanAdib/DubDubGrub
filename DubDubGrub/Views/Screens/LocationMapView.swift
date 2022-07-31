//
//  LocationMapView.swift
//  DubDubGrub
//
//  Created by Sadman Adib on 28/7/22.
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 23.7662, longitude: 90.3589), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    var body: some View {
        ZStack{
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
            
            VStack {
                LogoView()
                    .shadow(radius: 10)
                Spacer()
            }
        }
    }
}

struct LocationMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapView()
    }
}

struct LogoView: View {
    var body: some View {
        Image("ddg-map-logo")
            .resizable()
            .scaledToFit()
            .frame(height: 70)
    }
}
