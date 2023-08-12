//
//  IndieAlbums.swift
//  spoti-my
//
//  Created by Finn Bledsoe on 8/12/23.
//

import SwiftUI

struct IndieAlbums: View {
    var body: some View {
        Text("The best indie albums of the 2010s")
            .padding(.horizontal)
            .padding(.top, 8)
            .padding(.bottom, 3)
            .foregroundColor(.white)
            .font(.system(size: 22, weight: .bold))
            .frame(maxWidth: .infinity, alignment: .leading)

        ScrollView(.horizontal) {
            HStack(spacing: 13) {
                VStack {
                    Image("Floss")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(minWidth: 0, maxWidth: 150, minHeight: 0, maxHeight: 150)
                    Text("Floss")
                        .foregroundColor(.white)
                        .font(.caption)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Album • Injury Reserve")
                        .foregroundColor(.gray)
                        .font(.caption)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .frame(minWidth: 0, maxWidth: 150, minHeight: 0, maxHeight: 200, alignment: .leading)
                
                VStack {
                    Image("DECIDE")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(minWidth: 0, maxWidth: 150, minHeight: 0, maxHeight: 150)
                    Text("DECIDE")
                        .foregroundColor(.white)
                        .font(.caption)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Album • Djo")
                        .foregroundColor(.gray)
                        .font(.caption)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .frame(minWidth: 0, maxWidth: 150, minHeight: 0, maxHeight: 200, alignment: .leading)
                VStack {
                    Image("SCARING_THE_HOES")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(minWidth: 0, maxWidth: 150, minHeight: 0, maxHeight: 150)
                    Text("SCARING THE HOES")
                        .foregroundColor(.white)
                        .font(.caption)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Album • JPEGMAFIA")
                        .foregroundColor(.gray)
                        .font(.caption)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .frame(minWidth: 0, maxWidth: 150, minHeight: 0, maxHeight: 200, alignment: .leading)
                
                
            }
            .padding(.horizontal)
            
            
        }    }
}

struct IndieAlbums_Previews: PreviewProvider {
    static var previews: some View {
        IndieAlbums()
    }
}
