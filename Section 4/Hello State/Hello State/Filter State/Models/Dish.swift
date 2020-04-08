//
//  Dish.swift
//  Hello State
//
//  Created by Dwi Randy Herdinanto on 08/04/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation

struct Dish: Identifiable {
    let id = UUID()
    let name: String
    let imageUrl: String
    let isSpicy: Bool
}

extension Dish {
    static func all() -> [Dish] {
        return [
            Dish(name: "Kung Pow Chicken", imageUrl: "kungpow", isSpicy: true),
            Dish(name: "Sweet and Sour Chicken", imageUrl: "sweet", isSpicy: false),
            Dish(name: "Spicy Red Chicken", imageUrl: "spicy", isSpicy: true)
        ]
    }
}
