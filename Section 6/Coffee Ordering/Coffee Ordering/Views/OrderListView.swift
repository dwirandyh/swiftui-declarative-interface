//
//  OrderListView.swift
//  Coffee Ordering
//
//  Created by Dwi Randy Herdinanto on 09/04/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct OrderListView: View {
    
    let orders: [OrderViewModel]
    
    init(orders: [OrderViewModel]){
        self.orders = orders
    }
    
    var body: some View {
        List(self.orders){ order in
            HStack{
                Image(order.coffeeName)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(12)
                
                VStack(alignment: .leading, spacing: 12){
                    Text(order.name)
                        .font(.title)
                    
                    HStack{
                        Text(order.coffeeName)
                            .padding(10)
                            .background(Color.gray)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                        
                        Text(order.size)
                            .padding(10)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        let order = Order(name: "Mary", size: "Medium", coffeeName: "Regular", total: 2.1)
        return OrderListView(orders: [OrderViewModel(order: order)])
    }
}
