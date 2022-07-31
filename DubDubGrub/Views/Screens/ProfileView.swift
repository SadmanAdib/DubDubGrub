//
//  ProfileView.swift
//  DubDubGrub
//
//  Created by Sadman Adib on 28/7/22.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var companyName = ""
    @State private var bio = ""
    
    var body: some View {
        VStack{ // Automatically contained in a NavigationView as we came from a Tabview
            ZStack{
                NameBackgroundView()
                
                HStack(spacing: 20){
                    
                    ZStack {
                        AvatarView(size: 84)
                           
                        EditImageView()
                    }
                    .padding(.leading, 12)
                    
                    VStack(spacing: 1){
                        TextField("First Name", text: $firstName)
                            .ProfileNameStyle()
                            
                        
                        TextField("Last Name", text: $lastName)
                            .ProfileNameStyle()
                        
                        TextField("Company Name", text: $companyName)
                    }
                    .padding(.trailing, 16)
                }
                .padding()
            }
            
            VStack(alignment: .leading, spacing: 8) {
                CharacterRemainView(currentCount: bio.count)
                
                TextEditor(text: $bio)
                    .frame(height: 100)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.secondary, lineWidth: 1))
                    
                
            }
            .padding(.horizontal, 20)
            
            
            Spacer()
            
            Button {
                
            } label: {
                DDGButton(title: "Create Profile")
            }
            
        }
        .navigationTitle("Profile")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ProfileView()
        }
        
    }
}

struct NameBackgroundView: View {
    var body: some View {
        Color(.secondarySystemBackground)
            .frame(height: 130)
            .cornerRadius(12)
            .padding(.horizontal)
    }
}

struct EditImageView: View {
    var body: some View {
        Image(systemName: "square.and.pencil")
            .resizable()
            .scaledToFit()
            .frame(width: 14, height: 14)
            .foregroundColor(.white)
            .offset(y: 30)
    }
}

struct CharacterRemainView: View {
    
    var currentCount: Int
    
    var body: some View{
        
        Text("Bio: ")
            .font(.callout)
            .foregroundColor(.secondary)
        +
        Text("\(100 - currentCount)")
            .bold()
            .font(.callout)
            .foregroundColor(currentCount >= 100 ? .pink : .brandPrimary)
        +
        Text(" Characters Remain")
            .font(.callout)
            .foregroundColor(.secondary)
        
    }
}


