//
//  CoffeeListViewModel.swift
//  Coffee Ordering
//
//  Created by Dwi Randy Herdinanto on 09/04/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation

class CoffeeListViewModel {
    var coffeeList: [CoffeeViewModel] = [CoffeeViewModel]()
}

struct CoffeeViewModel {
    var coffee: Coffee
    
    init(coffee: Coffee){
        self.coffee = coffee
    }
    
    var name: String {
        return self.coffee.name
    }
    
    var imageUrl: String {
        return self.coffee.imageUrl
    }
    
    var price: Double {
        return self.coffee.price
    }
}
