//
//  Dish.swift
//  building-grid-layout
//
//  Created by Dwi Randy Herdinanto on 07/04/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation
import SwiftUI

struct Dish: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
    let imageUrl: String
}

extension Dish {
    static func all() -> [Dish] {
        return [
            Dish(name: "Filet Migmon", price: 35, imageUrl: "e1"),
            Dish(name: "Spagetti Meatballs", price: 12, imageUrl: "e2"),
            Dish(name: "Sushi", price: 15, imageUrl: "a1"),
            Dish(name: "Chocolate Cake", price: 8, imageUrl: "d1"),
            Dish(name: "Lemon Cake", price: 10, imageUrl: "d2"),
            Dish(name: "Spagetthi Meatballs", price: 13, imageUrl: "e2")
        ]
    }
}
