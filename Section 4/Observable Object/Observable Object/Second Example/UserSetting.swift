//
//  UserSetting.swift
//  Observable Object
//
//  Created by Dwi Randy Herdinanto on 08/04/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class UserSetting: ObservableObject {
    @Published var score: Int = 0
}
