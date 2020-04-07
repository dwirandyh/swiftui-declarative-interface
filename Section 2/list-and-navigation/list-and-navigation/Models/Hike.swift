//
//  Hike.swift
//  list-and-navigation
//
//  Created by Dwi Randy Herdinanto on 07/04/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation

struct Hike {
    let name: String
    let imageUrl: String
    let miles: Double
}

extension Hike {
    static func all() -> [Hike] {
        return [
            Hike(name: "Salmonberry Trail", imageUrl: "sal", miles: 6),
            Hike(name: "Tom, Dick and Harry Mountain", imageUrl: "tom", miles: 5.8),
            Hike(name: "Tamanewas Fails", imageUrl: "tam", miles: 5)
        ]
    }
}
