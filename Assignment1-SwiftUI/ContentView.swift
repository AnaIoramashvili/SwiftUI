//
//  ContentView.swift
//  Assignment1-SwiftUI
//
//  Created by Ana on 5/22/24.
//

import SwiftUI

struct ContentView: View {
    @State private var resertButtonColor: Color = .cyan

    var body: some View {
        ZStack {
            Color("backgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading) {
                
                Text("My App swiftUI")
                    .font(.system(size: 34, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.top, 7)
                    .padding(.leading, 25)
                
                HStack {
                    GuitarRectView()
                    VStack(spacing: 12) {
                        ChatRectView()
                        NewsRectView()
                    }
                    .padding(10)
                }
                .padding(.leading, 20)
                ScrollableList()
                
            }
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        resertButtonColor = resertButtonColor == .cyan ? .mint : .cyan
                    }) {
                        Image("arrow")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                            .padding()
                            .background(resertButtonColor)
                            .clipShape(Circle())
                            .cornerRadius(25)
                        }
                    .padding(.trailing)
                    .padding(.bottom, 30)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

