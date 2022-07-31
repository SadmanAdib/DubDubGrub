//
//  LocationListViewCell.swift
//  DubDubGrub
//
//  Created by Sadman Adib on 28/7/22.
//

import SwiftUI

struct LocationListViewCell: View {
    var body: some View {
        HStack{
            Image("default-square-asset")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(.vertical, 8)
            
            VStack(alignment: .leading){
                Text("Restaurant Name")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.75)
                
                HStack{
                    AvatarView(size: 35)
                    AvatarView(size: 35)
                    AvatarView(size: 35)
                    AvatarView(size: 35)
                }
            }
            .padding(.leading)
            
        }
    }
}

struct LocationListViewCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationListViewCell()
    }
}
