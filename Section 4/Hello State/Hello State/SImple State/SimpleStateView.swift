//
//  SimpleStateView.swift
//  Hello State
//
//  Created by Dwi Randy Herdinanto on 08/04/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct SimpleStateView: View {
    @State var name: String = "Dwi Randy H"
    
    var body: some View {
        VStack() {
            Text(self.name)
            
            Button(action: {
                self.name = "Randy"
            }) {
                Text("Change Title")
            }
            .padding()
        }
    }
}

struct SimpleStateView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleStateView()
    }
}
