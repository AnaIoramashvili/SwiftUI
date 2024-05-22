//
//  NewsRectView.swift
//  Assignment1-SwiftUI
//
//  Created by Ana on 5/22/24.
//

import SwiftUI

struct NewsRectView: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 18)
                .fill(Color("newsBackground"))
                .frame(width: 165, height: 110)
                .overlay(
                    ZStack(alignment: .bottomTrailing) {
                        Image("megaphone")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 93)
    
                        VStack(alignment: .leading) {
                            HStack {
                            Image("person")
                                .resizable()
                                .frame(width: 32, height: 32)
                                .padding(.top, 12)
                                .padding(.leading, 16)
                                .padding(.trailing, 12)
                                
                                Spacer()
                            }
                            
                            Text("ცეცხლოვანი სიახლეები")
                                .font(.system(size: 9))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.leading, 16)
                                .padding(.trailing, 30)
                                .lineLimit(2)
                            
                            Spacer()
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            )
        }
    }
}

#Preview {
    NewsRectView()
}

