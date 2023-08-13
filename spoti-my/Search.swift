//
//  Search.swift
//  spoti-my
//
//  Created by Finn Bledsoe on 8/10/23.
//

import SwiftUI

struct RecentSearch {
    var title: String
    var image: String
    var label: String
}

struct Search: View {
    let searches:[RecentSearch] = [
        RecentSearch(title: "Barbie the Album", image: "Barbie", label: "Album • Various Artists"),
        RecentSearch(title: "Ghais Guevara", image: "Ghais_Guevara", label: "Artist"),
        RecentSearch(title: "Barbie the Album", image: "Barbie", label: "Album • Various Artists"),
        RecentSearch(title: "Barbie the Album", image: "Barbie", label: "Album • Various Artists"),
        RecentSearch(title: "Barbie the Album", image: "Barbie", label: "Album • Various Artists"),
        RecentSearch(title: "Barbie the Album", image: "Barbie", label: "Album • Various Artists"),
    ]
    @State var searchQuery: String = ""
    @State var searchBarClicked: Bool = false
    init() {
        UITabBar.appearance().backgroundColor =  UIColor(CustomColors.HomeBackground.opacity(0.9))
    }
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
                        ScrollView(.vertical) {
                            HStack {
                                Text("Browse All")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .bold))
                                Spacer()
                            }
                            .padding()
                            HStack {
                                VStack {
                                    ForEach(0..<8) { item in
                                        VStack {
                                            HStack {
                                                Text("Podcasts")
                                                    .padding(10)
                                                    .fontWeight(.bold)
                                                    .font(.system(size: 18))

                                                Spacer()
                                            }

                                            Spacer()
                                        }
                                        .foregroundColor(.white)
                                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100, maxHeight: 100)
                                        .background(.orange)
                                        .cornerRadius(4)
                                        .padding(.leading)
                                        .padding(.vertical, 4)
                                        .padding(.trailing, 4)
                                            
                                    }
                                }
                                VStack {
                                    ForEach(0..<8) { item in
                                        VStack {
                                            HStack {
                                                Text("Charts")
                                                    .padding(10)
                                                    .fontWeight(.bold)
                                                    .font(.system(size: 18))
                                                Spacer()
                                            }
                                            Spacer()
                                        }
                                        .foregroundColor(.white)
                                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100, maxHeight: 100)
                                            .background(.red)
                                            .cornerRadius(4)
                                            .padding(.trailing)
                                            .padding(.vertical, 4)
                                            .padding(.leading, 4)
                                            
                                    }
                                        
                                        
                                    
                                }
                            }
                        }
                        .background(.clear)
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
                    ScrollView {
                        VStack {
                            HStack {
                                Text("Recent searches")
                                    .padding(.horizontal)
                                    .padding(.vertical, 9)
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            Spacer()
                        }
                    }
                }
                .toolbar {
                    ToolbarItemGroup(placement: .navigation) {
                        HStack {
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.white)
                                    .scaleEffect(0.8)
                                TextField("", text: $searchQuery, prompt: Text("What would you like to listen to?       ").foregroundColor(.gray))
                                    .tint(CustomColors.SpotifyGreen)
                                    .font(.system(size: 15))
                                    .foregroundColor(.white)
                                
                                Spacer()
                            }
                            


                        }
                        .padding(5)
                        .background(CustomColors.NowListening)
                        .cornerRadius(8)
                        
                        
                    }
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button("Cancel") {
                            toggleSearchBarClicked()
                        }
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .bold))
                        .padding(.leading, 2)
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
