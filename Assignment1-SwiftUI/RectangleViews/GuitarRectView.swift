//
//  GuitarRectView.swift
//  Assignment1-SwiftUI
//
//  Created by Ana on 5/22/24.
//

import SwiftUI

struct GuitarRectView: View {
    @State private var text: String = "We love\nproperty\nwrappers and\nclosures"

    var body: some View {
        VStack {
            Rectangle()
                .fill(Color("guitarBackground"))
                .cornerRadius(18)
                .frame(width: 165, height: 232)
                .overlay(
                    ZStack(alignment:.bottomTrailing) {
                        Image("guitar")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 82, height: 182)
                            .padding(.top, 50)
                            .padding(.leading, 16)
                        
                        VStack(alignment: .leading) {
                            HStack {
                                Button(action: {
                                    text = "Please, turn my favoite music on"
                                }) {
                                    Image("microphone")
                                        .resizable()
                                        .frame(width: 32, height: 32)
                                        .padding(1)
                                }
                                .padding(.top, 12)
                                .padding(.leading, 16)
                                
                                Spacer()
                            }
                            
                            Text("ჯუზონები და რამე")
                                .font(.system(size: 9))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.leading, 18)
                            
                            Spacer()
                            
                            Text(text)
                                .font(.system(size: 15, weight: .heavy))
                                .foregroundColor(.white)
                                .lineSpacing(2)
                                .padding(.bottom, 33)
                                .padding(.trailing, 41)
                                .padding(.leading, 16)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                )
        }
    }
}

#Preview {
    GuitarRectView()
}

