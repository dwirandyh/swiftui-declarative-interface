//
//  FancyTimer.swift
//  Observable Object
//
//  Created by Dwi Randy Herdinanto on 08/04/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class FancyTimer: ObservableObject {
    @Published var value: Int = 0
    
    init(){
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (timer) in
            self.value += 1
        }
    }
}
