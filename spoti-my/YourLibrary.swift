//
//  My Library.swift
//  spoti-my
//
//  Created by Finn Bledsoe on 8/10/23.
//

import SwiftUI

struct YourLibrary: View {
    var body: some View {
        NavigationStack {
            
            ZStack {
                
                CustomColors.HomeBackground.ignoresSafeArea()
                VStack {
                    YourLibraryFilterButtons()
                        .padding()
                    Spacer()
                }
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    HStack {
                        Image("Me")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                            .frame(minWidth: 25, maxWidth: 35)
                        Text("Your Library")
                            .foregroundColor(.white)
                            .font(.system(size: 22, weight: .bold))
                        Spacer()
                    }
                    
                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .padding(4)
                        Image(systemName: "plus")
                            .padding(4)
                    }
                    .foregroundColor(.white)
                }
                
            }
        }
    }
}

struct YourLibrary_Previews: PreviewProvider {
    static var previews: some View {
        YourLibrary()
    }
}
