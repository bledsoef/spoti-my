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
//    init() {
//        UITabBar.appearance().backgroundColor =  UIColor(CustomColors.HomeBackground.opacity(0.9))
//    }
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
                
                YourLibrary()
                    .tabItem {
                        Label("Your Library", systemImage: "books.vertical.fill")
                    }.tag(3)
                
                
            }
        .accentColor(.white)
        .task {
            // Change the color of inactive tabs
            UITabBar.appearance().unselectedItemTintColor = UIColor(inactiveColor)
            UITabBar.appearance().backgroundColor =  UIColor(CustomColors.HomeBackground.opacity(0.9))

        }
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
