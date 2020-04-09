//
//  ContentView.swift
//  Coffee Ordering
//
//  Created by Dwi Randy Herdinanto on 09/04/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var orderListViewModel = OrderListViewModel()
    
    @State private var showModal: Bool = false
    
    var body: some View {
        
        NavigationView{
            OrderListView(orders: self.orderListViewModel.orders)
                
                .navigationBarTitle("Coffee Orders")
                .navigationBarItems(
                    leading: Button(action: reloadOrder){
                        Image(systemName: "arrow.clockwise")
                            .foregroundColor(Color.white)
                    },
                    trailing: Button(action: showAddCoffeeOrderView){
                        Image(systemName: "plus")
                            .foregroundColor(Color.white)
                })
                .sheet(isPresented: self.$showModal) {
                    AddCoffeeOrderView(isPresented: self.$showModal)
            }
        }
    }
    
    private func reloadOrder(){
        self.orderListViewModel.fetchOrders()
    }
    
    private func showAddCoffeeOrderView(){
        self.showModal = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
