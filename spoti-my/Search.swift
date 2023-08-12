//
//  Search.swift
//  spoti-my
//
//  Created by Finn Bledsoe on 8/10/23.
//

import SwiftUI

struct Search: View {
    @State var searchBarClicked: Bool = false
    var body: some View {
        NavigationStack {
            if !searchBarClicked {
                ZStack {
                    CustomColors.HomeBackground.ignoresSafeArea()
                    VStack {
                        Button(action: toggleSearchBarClicked, label: {
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .scaleEffect(1.3)
                                Text("What do you want to listen to?")
                                Spacer()
                            }
                            .foregroundColor(.black)
                            
                            
                            
                        })
                        .padding(13)
                        .background(.white)
                        .foregroundColor(.black)
                        .clipped()
                        .cornerRadius(7)
                        .padding(.horizontal)
                        .padding(.top, 5)
                        Spacer()
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
            else {
                ZStack {
                    CustomColors.HomeBackground.ignoresSafeArea()
                }
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        HStack {
                            Text("Cancel")
                                .foregroundColor(.white)
                                .font(.system(size: 15, weight: .bold))
                        }
                        
                    }
                }
            }
        }
    }
    func toggleSearchBarClicked() {
        searchBarClicked.toggle()
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
