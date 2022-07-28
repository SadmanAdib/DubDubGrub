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
            
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                LocationListViewCell()
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
