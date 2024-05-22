//
//  ScrollableList.swift
//  Assignment1-SwiftUI
//
//  Created by Ana on 5/23/24.
//

import SwiftUI

struct ScrollableList: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                ForEach(data, id: \.id) { item in
                    HStack(alignment: .top) {
                        Image("document")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .padding(.top, 10)
                        
                        VStack(alignment: .leading) {
                            Text(item.question)
                                .font(.system(size: 14))
                                .foregroundColor(.white)
                            
                            Text(item.answer)
                                .font(.system(size: 10))
                                .foregroundColor(.gray)
                        }
                        .padding(.top, 10)
                        .padding(.leading, 8)
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                    Divider()
                        .background(Color("deviderColor"))
                }
            }
        }
        .background(Color("backgroundColor"))
    }
}


#Preview {
    ScrollableList()
}
