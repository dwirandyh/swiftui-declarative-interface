//
//  ContentView.swift
//  list-and-navigation
//
//  Created by Dwi Randy Herdinanto on 07/04/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let hikes = Hike.all()
    
    var body: some View {
        List(self.hikes, id: \.name){ hike in
            HikeCell(hike: hike)
        }
    }
}

struct HikeCell: View {
    let hike: Hike
    
    var body: some View {
        HStack {
            Image(hike.imageUrl)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(16)
            
            VStack(alignment: .leading) {
                Text(hike.name)
                Text(String(format: "%.2f", hike.miles))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
