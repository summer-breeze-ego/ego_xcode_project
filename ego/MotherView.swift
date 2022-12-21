//
//  ContentView.swift
//  ego
//
//  Created by Augustin Coman on 08/12/2022.
//

import SwiftUI

struct MotherView: View {
    var body: some View {
        
        TabView {
            
            // first tab item - profile
            ProfileView()
                .tabItem() {
                    Text("P View")
                        
                }
            
            // 2nd tab item - the score system
            // maybe more of a "daily check-in" or wtv
            ScoreSystem()
                .tabItem() {
                    Text("Score")
                }
        }
        .padding()
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView()
    }
}
