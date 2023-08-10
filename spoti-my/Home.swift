//
//  Home.swift
//  spoti-my
//
//  Created by Finn Bledsoe on 8/9/23.
//

import SwiftUI

struct Home: View {
    init() {
      // Large Navigation Title
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white,
            .font: UIFont.systemFont(ofSize: 25, weight: .bold)]
        
    }
    var body: some View {
        NavigationStack {
            
            ZStack {
                CustomColors.HomeBackground.ignoresSafeArea()
                VStack {
                    HStack {
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
                    }
                    .padding()
                    .navigationTitle("Good evening")
                    HStack(spacing: 4) {
                        VStack {
                            ForEach(["BLOOD ON MY NIKEZ", "Liked Songs", "Let it Grow"], id: \.self) { item in
                                Text(item)
                                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 40)
                                    .background(CustomColors.FilterBackground)
                                    .cornerRadius(3)
                                    .font(.caption)

                            }
                        }
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .foregroundColor(.white)
                        .padding(.leading, 10)
                        VStack {
                            ForEach(["DECIDE", "SCARING THE HOES", "Floss"], id: \.self) { item in
                                Text(item)
                                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 40)
                                    .background(CustomColors.FilterBackground)
                                    .cornerRadius(3)
                                    .font(.caption)
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
