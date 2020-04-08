//
//  FoodListView.swift
//  Hello State
//
//  Created by Dwi Randy Herdinanto on 08/04/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct FoodListView: View {
    
    var model = Dish.all()
    
    @State private var isSpicy: Bool = false
    
    var body: some View {
        
        VStack{
            
            Toggle(isOn: $isSpicy) {
                Text("Spicy")
                    .font(.title)
            }
            .padding()
            
            List(self.model.filter{
                $0.isSpicy == self.isSpicy
            }){ dish in
                HStack{
                    
                    Image(dish.imageUrl)
                        .resizable()
                        .frame(width: 100, height: 100)
                    
                    Text(dish.name)
                        .font(.title)
                        .lineLimit(nil)
                    
                    Spacer()
                    
                    if (dish.isSpicy) {
                        Image("spicy-icon")
                            .resizable()
                            .frame(width: 35, height: 35)
                    }
                }
            }
        }
    }
}

struct FoodListView_Previews: PreviewProvider {
    static var previews: some View {
        FoodListView()
    }
}
