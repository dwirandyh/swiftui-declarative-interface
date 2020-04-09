//
//  OrderListViewModel.swift
//  Coffee Ordering
//
//  Created by Dwi Randy Herdinanto on 09/04/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation

class OrderListViewModel: ObservableObject {
    
    @Published var orders: [OrderViewModel] = []
    
    init() {
        self.fetchOrders()
    }
    
    func fetchOrders(){
        WebService().getAllOrders { (returnedOrders) in
            if let orders = returnedOrders {
                DispatchQueue.main.async {
                    self.orders = orders.map(OrderViewModel.init)
                }
            }
        }
    }
    
}

class OrderViewModel: Identifiable {
    
    let id = UUID()
    
    var order: Order
    
    init(order: Order){
        self.order = order
    }
    
    var name: String {
        return self.order.name
    }
    
    var size: String {
        return self.order.size
    }
    
    var coffeeName: String {
        return self.order.coffeeName
    }
    
    var total: Double {
        return self.order.total
    }
}

