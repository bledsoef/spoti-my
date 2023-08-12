//
//  JumpBackIn.swift
//  spoti-my
//
//  Created by Finn Bledsoe on 8/12/23.
//

import SwiftUI

struct JumpBackIn: View {
    var body: some View {
        Text("Jump back in")
            .padding(.horizontal)
            .padding(.top, 8)
            .padding(.bottom, 3)
            .foregroundColor(.white)
            .font(.system(size: 22, weight: .bold))
            .frame(maxWidth: .infinity, alignment: .leading)

        ScrollView(.horizontal) {
            HStack(spacing: 13) {
                VStack {
                    Image("Liked_Songs")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(minWidth: 0, maxWidth: 150, minHeight: 0, maxHeight: 150)
                    Text("Liked Songs")
                        .foregroundColor(.white)
                        .font(.caption)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Playlist • Liked Songs")
                        .foregroundColor(.gray)
                        .font(.caption)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .frame(minWidth: 0, maxWidth: 150, minHeight: 0, maxHeight: 200, alignment: .leading)
                
                VStack {
                    Image("BLOOD_ON_MY_NIKEZ")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(minWidth: 0, maxWidth: 150, minHeight: 0, maxHeight: 150)
                    Text("BLOOD ON MY NIKEZ")
                        .foregroundColor(.white)
                        .font(.caption)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Album • BLOOD ON MY NIKEZ")
                        .foregroundColor(.gray)
                        .font(.caption)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .frame(minWidth: 0, maxWidth: 150, minHeight: 0, maxHeight: 200, alignment: .leading)
                VStack {
                    Image("Let_it_Grow")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(minWidth: 0, maxWidth: 150, minHeight: 0, maxHeight: 150)
                    Text("Let it Grow")
                        .foregroundColor(.white)
                        .font(.caption)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Playlist • Let it Grow")
                        .foregroundColor(.gray)
                        .font(.caption)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .frame(minWidth: 0, maxWidth: 150, minHeight: 0, maxHeight: 200, alignment: .leading)
                
                
            }
            .padding(.horizontal)
            
            
        }    }
}

struct JumpBackIn_Previews: PreviewProvider {
    static var previews: some View {
        JumpBackIn()
    }
}
