//
//  Search.swift
//  spoti-my
//
//  Created by Finn Bledsoe on 8/10/23.
//

import SwiftUI

struct Search: View {
    var body: some View {
        NavigationStack {
            ZStack {
                CustomColors.HomeBackground.ignoresSafeArea()
                VStack {
                    Button(action: {}, label: {
                        HStack {
                            
                        }

                    })
                    .frame(width: .infinity, height: 30)
                    .background(.white)
                }
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigation) {
                    HStack {
                        Text("Search")
                            .foregroundColor(.white)
                            .font(.system(size: 22, weight: .bold))
                    }
                    
                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    HStack {
                        Image(systemName: "camera")
                            .padding(4)
                    }
                    .foregroundColor(.white)
                }
                
            }
        }
    }
    func getRexStatus() {
        
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
