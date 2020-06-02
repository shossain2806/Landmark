//
//  ContentView.swift
//  Landmarks
//
//  Created by Md. Saber Hossain on 2/6/20.
//  Copyright © 2020 Md. Saber Hossain. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300.0)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/)
                
            
            CircleImage()
                .offset(y: -130.0)
                .padding(.bottom, -130.0)
            
            VStack(alignment: .leading, spacing: 0.0) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text(/*@START_MENU_TOKEN@*/"Joshua Tree National Park"/*@END_MENU_TOKEN@*/)
                        .font(.subheadline)
                    Spacer()
                    Text(/*@START_MENU_TOKEN@*/"California"/*@END_MENU_TOKEN@*/)
                        .font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
