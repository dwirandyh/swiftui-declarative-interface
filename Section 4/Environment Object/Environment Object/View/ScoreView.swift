//
//  ScoreView.swift
//  Environment Object
//
//  Created by Dwi Randy Herdinanto on 08/04/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct ScoreView: View {
    
    @EnvironmentObject var userSetting: UserSetting
    
    var body: some View {
        VStack{
            Text("\(userSetting.value)")
            Button("Increment Value"){
                self.userSetting.value += 1
            }
            .padding()
            .background(Color.green)
        }
        .padding()
        .background(Color.orange)
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView().environmentObject(UserSetting())
    }
}
