//
//  ChatRectView.swift
//  Assignment1-SwiftUI
//
//  Created by Ana on 5/22/24.
//

import SwiftUI

struct ChatRectView: View {
    @State private var viewColor: Color = Color("chatBackground")

    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 18)
                .fill(viewColor)
                .frame(width: 165, height: 110)
                .overlay(
                    ZStack(alignment: .bottomTrailing) {
                        Image("blueChat")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 93)
                            .padding(.bottom, 8)
    
                        VStack(alignment: .leading) {
                            HStack {
                                Button(action: {
                                    viewColor = Color.green
                                }) {
                                    Image("chat")
                                        .resizable()
                                        .frame(width: 32, height: 32)
                                }
                                .padding(.top, 12)
                                .padding(.leading, 16)
                                Spacer()
                            }
                            
                            Text("ჩატაობა")
                                .font(.system(size: 9))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.leading, 16)
                            
                            Spacer()
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            )
        }
    }
}

#Preview {
    ChatRectView()
}
