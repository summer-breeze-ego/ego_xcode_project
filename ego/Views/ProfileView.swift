//
//  SwiftUIView.swift
//  ego
//
//  Created by Augustin Coman on 08/12/2022.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var username: String = "Username"
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Spacer()
            
            // Header for Profile page
            Text("PROFILE").font(.largeTitle).padding(.horizontal, 10.0).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            // display the username
            Text(username)
            
            Spacer()
                
            Spacer()
            
            Button (
                action: {
                    // insert action
                }
            ) {
                ProfileEditButtonContent()
                
            }
            
            Button (
                action: {
                    // insert action
                }
            ) {
                ProfileBackButtonContent()
            }
            
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

// design of back button
struct ProfileBackButtonContent : View {
    var body: some View {
        return Text("Back")
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(width: 200, height: 50)
            .background(Color.black)
            .cornerRadius(15)
            .padding(.top, 50)
            .font(.title3)
    }
}

// design of edit button
struct ProfileEditButtonContent : View {
    var body: some View {
        return Text("Edit")
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(width: 200, height: 50)
            .background(Color.black)
            .cornerRadius(15)
            .padding(.top, 50)
            .font(.title3)
    }
}
