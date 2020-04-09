//
//  AddCoffeeOrderView.swift
//  Coffee Ordering
//
//  Created by Dwi Randy Herdinanto on 09/04/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct AddCoffeeOrderView: View {
    
    @Binding var isPresented: Bool
    
    @ObservedObject private var coffeeOrderVM = CoffeeOrderViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("YOUR ORDER").font(.body)) {
                        TextField("Enter your name", text: self.$coffeeOrderVM.name)
                    }
                    
                    Section(header: Text("SELECT COFFEE").font(.body)) {
                        ForEach(self.coffeeOrderVM.coffeeList, id:\.name) { coffee in
                            CoffeeCellView(coffee: coffee, selection: self.$coffeeOrderVM.coffeeName)
                        }
                    }
                    
                    Section(header: Text("SELECT SIZE").font(.body), footer: OrderTotalView(total: self.coffeeOrderVM.total)) {
                        Picker("", selection: self.$coffeeOrderVM.size){
                            // tag is selection value
                            Text("Small")
                                .tag("Small")
                            
                            Text("Medium")
                                .tag("Medium")
                            
                            Text("Large")
                                .tag("Large")
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    }
                    
                }
                
                Button("Place Order"){
                    self.coffeeOrderVM.placeOrder{
                        self.isPresented = false
                    }
                }
                .padding(EdgeInsets(top: 12, leading: 100, bottom: 12, trailing: 100))
                .background(Color.green)
                .foregroundColor(Color.white)
                .cornerRadius(10)
            }
                
            .navigationBarTitle("Add Order")
        }
    }
}

struct CoffeeCellView: View {
    
    let coffee: CoffeeViewModel
    
    @Binding var selection: String
    
    var body: some View {
        HStack{
            Image(self.coffee.imageUrl)
                .resizable()
                .frame(width: 50, height: 50)
            Text(self.coffee.name)
            
            Spacer()
            
            Image(systemName: self.selection == self.coffee.name ? "checkmark" : "")
                .padding()
        }
        .onTapGesture {
            self.selection = self.coffee.name
        }
    }
}

struct AddCoffeeOrderView_Previews: PreviewProvider {
    static var previews: some View {
        AddCoffeeOrderView(isPresented: .constant(true))
    }
}
