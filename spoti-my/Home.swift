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

                }
                VStack {
                    Spacer()
                    HStack {
                        Image("SCARING_THE_HOES")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(3)
                            .padding(.vertical, 6)
                            .padding(.horizontal, 4)
                        VStack {
                            HStack {
                                Text("Burfict!")
                                Spacer()
                            }
                            HStack {
                                Text("JPEGMAFIA, Danny Brown")
                                    .foregroundColor(.gray)
                                Spacer()
                            }
                            
                        }
                        .font(.caption2)
                        Spacer()
                        Image(systemName: "hifispeaker")
                            .scaleEffect(1.2)
                            .padding(.trailing, 20)
                        
                        Image(systemName: "play.fill")
                            .scaleEffect(1.2)
                            .padding(.trailing, 10)

                        Spacer()
                    }
                    .foregroundColor(.white)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
                    .background(CustomColors.NowListening)
                    .clipped()
                    .cornerRadius(3)
                    .padding(4)
                    .shadow(radius: 2)
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
