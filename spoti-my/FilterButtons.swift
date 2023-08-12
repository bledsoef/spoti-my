//
//  FilterButtons.swift
//  spoti-my
//
//  Created by Finn Bledsoe on 8/12/23.
//

import SwiftUI

struct FilterButtons: View {
    var body: some View {
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
            Spacer()
        }
    }
    func getRexStatus() {
        
    }
}

struct FilterButtons_Previews: PreviewProvider {
    static var previews: some View {
        FilterButtons()
    }
}
