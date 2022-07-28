//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Sadman Adib on 28/7/22.
//

import SwiftUI

struct LocationListView: View {
    var body: some View {
        NavigationView{
            
            List(0..<10) { item in
                NavigationLink(destination: LocationDetailView()) { LocationListViewCell()
                }
                .navigationTitle("Grub Spots")
            }
            .listStyle(.plain)
            
        }
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}
