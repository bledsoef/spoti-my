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
                    HStack() {
                        Button(action: {
                            getRexStatus()
                        }) {
                            Text("Music")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                            
                        }
                        .padding([.horizontal], 15)
                        .padding([.vertical], 7)
                        .background(CustomColors.FilterBackground)
                        .foregroundColor(.white)
                        .border(CustomColors.FilterBackground, width: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
                        .clipShape(Capsule())
                        
                        Button(action: {
                            getRexStatus()
                        }) {
                            Text("Podcasts & Shows")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                            
                        }
                        .padding([.horizontal], 15)
                        .padding([.vertical], 7)
                        .background(CustomColors.FilterBackground)
                        .foregroundColor(.white)
                        .border(CustomColors.FilterBackground, width: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
                        .clipShape(Capsule())
                        
                        Button(action: {
                            getRexStatus()
                        }) {
                            Text("Audiobooks")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                            
                        }
                        .padding([.horizontal], 15)
                        .padding([.vertical], 7)
                        .background(CustomColors.FilterBackground)
                        .foregroundColor(.white)
                        .border(CustomColors.FilterBackground, width: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
                        .clipShape(Capsule())
                        Spacer()
                    }
                    .padding()
                    .navigationTitle("Good evening")
                    HStack(spacing: 4) {
                        VStack {
                            ForEach(entry_row1, id: \.self.title) { item in
                                HStack {
                                    Image(item.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    Text(item.title)
                                    Spacer()

                                }
                                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
                                .background(CustomColors.FilterBackground)
                                .cornerRadius(3)
                                .font(.caption).fontWeight(.semibold)

                            }
                        }
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .foregroundColor(.white)
                        .padding(.leading, 10)
                        VStack {
                            ForEach(entry_row2, id: \.self.title) { item in
                                HStack {
                                    Image(item.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    Text(item.title)
                                    Spacer()
                                        
                                }
                                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
                                .background(CustomColors.FilterBackground)
                                .cornerRadius(3)
                                .font(.caption).fontWeight(.semibold)
                            }
                        }
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .foregroundColor(.white)
                        .padding(.trailing, 10)
                        
                        
                        
                        
                        
                    }
                    Spacer()
                }
            }
            
        }

    }
        
    func getRexStatus() {
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .previewDevice(PreviewDevice(rawValue: "iPhone 14"))
    }
}
