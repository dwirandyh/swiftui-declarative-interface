//
//  WeatherService.swift
//  Weather App
//
//  Created by Dwi Randy Herdinanto on 09/04/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation

class WeatherService {
    
    let API_URL = "https://api.openweathermap.org/data/2.5"
    let API_KEY = "04419895d8b895ca972a94a627c88c71"
    
    func getWeather(city: String, completion: @escaping (Weather?) -> ()){
        guard let url = URL(string: "\(self.API_URL)/weather?q=\(city)&appid=\(self.API_KEY)") else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url){ data, response, error in
            guard let responseData = data, error == nil else {
                completion(nil)
                return
            }
            
            let result = try? JSONDecoder().decode(WeatherResponse.self, from: responseData)
            if let weatherResponse = result {
                let weather = weatherResponse.main
                completion(weather)
            } else {
                completion(nil)
            }
        }.resume()
    }
}
