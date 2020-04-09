//
//  WebService.swift
//  Coffee Ordering
//
//  Created by Dwi Randy Herdinanto on 09/04/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation

class WebService {
    
    let BASE_URL = "https://island-bramble.glitch.me"
    
    func createCoffeeOrder(order: Order, completion: @escaping (CreateOrderResponse?) -> ()){
        guard let url = URL(string: "\(self.BASE_URL)/orders") else { fatalError("Invalid Url") }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try? JSONEncoder().encode(order)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            let createOrderResponse = try?JSONDecoder().decode(CreateOrderResponse.self, from: data)
            completion(createOrderResponse)
        }.resume()
    }
    
    func getAllOrders(completion: @escaping ([Order]?) -> ()){
        guard let url = URL(string: "\(self.BASE_URL)/orders") else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            let orders = try? JSONDecoder().decode([Order].self, from: data)
            completion(orders)
            
        }.resume()
    }
    
}
