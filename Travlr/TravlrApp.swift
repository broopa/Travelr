//
//  TravlrApp.swift
//  Travlr
//
//  Created by Ian Albahae on 6/7/22.
//

import SwiftUI

@main
struct TravlrApp: App {
    
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView {
            NavigationView {
                ContentView(location: locations.primary)
                }
            .tabItem {
                Image(systemName: "airplane.circle.fill")
                Text("Discover")
                }
            NavigationView {
                WorldView()
                }
            .tabItem {
                Image(systemName: "star.fill")
                Text("Locations")
                }
                NavigationView {
                    TipsView()
                    }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                    }
            }
            
            .environmentObject(locations)
        }
    }
}
