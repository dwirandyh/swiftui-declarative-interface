//
//  ContentView.swift
//  building-grid-layout
//
//  Created by Dwi Randy Herdinanto on 07/04/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            
            // rows
            ForEach(0..<5) { _ in
                HStack {
                    
                    // column
                    ForEach(0..<2) { _ in
                        Image("food")
                            .resizable()
                            .scaledToFit()
                    }
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
