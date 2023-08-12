//
//  NowListening.swift
//  spoti-my
//
//  Created by Finn Bledsoe on 8/12/23.
//

import SwiftUI

struct NowListening: View {
    var body: some View {
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
            .padding(.horizontal, 4)
            .shadow(radius: 2)
        }    }
}

struct NowListening_Previews: PreviewProvider {
    static var previews: some View {
        NowListening()
    }
}
