//
//  Home.swift
//  spoti-my
//
//  Created by Finn Bledsoe on 8/9/23.
//

import SwiftUI

struct Entry {
    var title: String
    var image: String
}

struct Home: View {
    var entry_row1:[Entry] = [
        Entry(title: "BLOOD ON MY NIKEZ", image: "BLOOD_ON_MY_NIKEZ"),
        Entry(title: "Liked Songs", image: "Liked_Songs"),
        Entry(title: "Let it Grow", image: "Let_it_Grow"),
    ]
    var entry_row2:[Entry] = [
        Entry(title: "DECIDE", image: "DECIDE"),
        Entry(title: "SCARING THE HOES", image: "SCARING_THE_HOES"),
        Entry(title: "Floss", image: "Floss"),
    ]
    init() {
      // Large Navigation Title
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white, .font: UIFont.systemFont(ofSize: 25, weight: .bold)]
        
    }
    var body: some View {
        NavigationStack {
            
            ZStack {
                CustomColors.HomeBackground.ignoresSafeArea()
                VStack {
                    FilterButtons()
                    .padding()
                    HStack(spacing: 6) {
                        RecentCol(entry_row: entry_row1)
                            .padding(.leading, 10)

                        RecentCol(entry_row: entry_row2)
                        
                            .padding(.trailing, 10)

                    }
                    IndieAlbums()
                    JumpBackIn()
                        
                    Spacer()
                }
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigation) {
                    HStack {
                        Text("Good evening")
                            .foregroundColor(.white)
                            .font(.system(size: 22, weight: .bold))
                    }
                    
                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    HStack {
                        Image(systemName: "bell")
                            .padding(4)
                        Image(systemName: "clock.arrow.2.circlepath")
                            .padding(4)
                        Image(systemName: "gearshape")
                            .padding(4)
                    }
                    .foregroundColor(.white)
                }
                
            }
            
        }
        

    }
        

}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .previewDevice(PreviewDevice(rawValue: "iPhone 14"))
    }
}
