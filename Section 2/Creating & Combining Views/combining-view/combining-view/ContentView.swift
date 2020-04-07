//
//  ContentView.swift
//  combining-view
//
//  Created by Dwi Randy Herdinanto on 07/04/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center){
            
            Image("background")
                .resizable() // to make this image resizeable
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .padding()
//                .clipShape(Circle())
            
            
            Text("First Line")
                .font(.largeTitle)
                .foregroundColor(.green)
            
            Text("Second Line")
                .font(.largeTitle)
                .foregroundColor(.orange)
            
            HStack {
                Text("Left Side")
                    .padding(.all)
                Text("Right Side")
                    .padding(.all)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
