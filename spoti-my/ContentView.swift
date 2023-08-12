//
//  ContentView.swift
//  spoti-my
//
//  Created by Finn Bledsoe on 8/9/23.
//

import SwiftUI

struct ContentView: View {
    @State var tab = 1
    var activeColor = Color.white
    var inactiveColor = Color.gray
    var body: some View {
        TabView(selection: $tab) {
                Home()
                    .tabItem {
                        Label("Home", systemImage: "house.fill")
                    }.tag(1)
                
                Search()
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                    }.tag(2)
                
                Your_Library()
                    .tabItem {
                        Label("Your Library", systemImage: "books.vertical.fill")
                    }.tag(3)
                
                
            }
        .background(Color.black.opacity(0.3))
        .accentColor(.white)
        .onAppear {
                    // Change the color of inactive tabs
                    UITabBar.appearance().unselectedItemTintColor = UIColor(inactiveColor)
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
