//
//  YourLibraryFilterButtons.swift
//  spoti-my
//
//  Created by Finn Bledsoe on 8/13/23.
//

import SwiftUI

struct YourLibraryFilterButtons: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Button(action: {
                    
                }) {
                    Text("Playlist")
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
                }) {
                    Text("Albums")
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
                }) {
                    Text("Artists")
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
                }) {
                    Text("Downloaded")
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
            
        }
    }
}

struct YourLibraryFilterButtons_Previews: PreviewProvider {
    static var previews: some View {
        YourLibraryFilterButtons()
    }
}
