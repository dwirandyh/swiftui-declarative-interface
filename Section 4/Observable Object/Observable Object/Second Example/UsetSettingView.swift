//
//  UsetSettingView.swift
//  Observable Object
//
//  Created by Dwi Randy Herdinanto on 08/04/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct UsetSettingView: View {
    
    @ObservedObject var userSetting = UserSetting()
    
    var body: some View {
        VStack(spacing: 20){
            Text("Your score is : \(self.userSetting.score)")
            
            Button("Increment Score"){
                self.userSetting.score += 1
            }
            .padding()
        }
    }
}

struct UsetSettingView_Previews: PreviewProvider {
    static var previews: some View {
        UsetSettingView()
    }
}
