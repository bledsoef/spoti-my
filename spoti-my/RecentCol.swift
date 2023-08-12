//
//  RecentCol1.swift
//  spoti-my
//
//  Created by Finn Bledsoe on 8/12/23.
//

import SwiftUI

struct RecentCol: View {
    let entry_row: [Entry]
    var body: some View {
        VStack {
            ForEach(entry_row, id: \.self.title) { item in
                HStack {
                    Image(item.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text(item.title)
                    Spacer()

                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
                .background(CustomColors.FilterBackground)
                .cornerRadius(3)
                .font(.caption).fontWeight(.semibold)

            }
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .foregroundColor(.white)
        
    }
}

