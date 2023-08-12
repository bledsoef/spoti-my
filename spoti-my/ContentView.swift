//
//  ContentView.swift
//  spoti-my
//
//  Created by Finn Bledsoe on 8/9/23.
//

import SwiftUI
// Source:
// https://www.hackingwithswift.com/example-code/uicolor/how-to-convert-a-hex-color-to-a-uicolor
extension UIColor {
    public convenience init?(hex: String) {
        let r, g, b, a: CGFloat

        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])

            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }

        return nil
    }
}
struct ContentView: View {
    @State var tab = 1
    var activeColor = Color.white
    var inactiveColor = Color.gray
    init() {
        UITabBar.appearance().backgroundColor =  UIColor(CustomColors.HomeBackground.opacity(0.9))
    }
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
