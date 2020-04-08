//
//  ContentView.swift
//  Environment Object
//
//  Created by Dwi Randy Herdinanto on 08/04/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var userSetting : UserSetting
    
    var body: some View {
        VStack(spacing: 8){
            Text("Increment Value")
            Text("\(userSetting.value)")
            Button("Add Value"){
                self.userSetting.value += 1
            }
            .padding()
            
            ScoreView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
