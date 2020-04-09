//
//  CoffeeOrderViewModel.swift
//  Coffee Ordering
//
//  Created by Dwi Randy Herdinanto on 09/04/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation

class CoffeeOrderViewModel: ObservableObject {
    
     private var webService: WebService
    
    var name: String = ""
    
    @Published var size: String = "Medium"
    @Published var coffeeName: String = ""
    
    var total: Double {
        return self.calculateTotalPrice()
    }
    
    var coffeeList: [CoffeeViewModel] {
        return Coffee.all().map(CoffeeViewModel.init)
    }
    
    init(){
        self.webService = WebService()
    }
    
    func placeOrder(completionHandler: @escaping () -> ()){
        let order = Order(name: self.name, size: self.size, coffeeName: self.coffeeName, total: self.total)
        
        self.webService.createCoffeeOrder(order: order) { _ in
            DispatchQueue.main.async {
                completionHandler()
            }
        }
    }
    
    private func priceForSize() -> Double {
        let prices = ["Small": 2.0, "Medium": 3.0, "Large": 4.0]
        return prices[self.size]!
    }
    
    private func calculateTotalPrice() -> Double {
        let coffeeVM = coffeeList.first { $0.name == self.coffeeName }
        if let coffeeVM = coffeeVM {
            return coffeeVM.price * self.priceForSize()
        } else {
            return 0.0
        }
    }
}
