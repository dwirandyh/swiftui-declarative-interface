//
//  WeatherViewModel.swift
//  Weather App
//
//  Created by Dwi Randy Herdinanto on 09/04/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation

class WeatherViewModel: ObservableObject {
    private var weatherService: WeatherService
    
    @Published var weather = Weather()
    
    var temperature: String {
        if let temp = self.weather.temp {
            return String(format: "%.0f", temp)
        } else {
            return ""
        }
    }
    
    
    var cityName: String = ""
    
    init(service: WeatherService = WeatherService()){
        self.weatherService = service
    }
    
    func search(){
        if let city = self.cityName.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed){
            fetchWeather(by: city)
        }
    }
    
    private func fetchWeather(by city: String){
        self.weatherService.getWeather(city: city) { [weak self] (weather) in
            guard let weather = weather else { return }
            DispatchQueue.main.async {
                self?.weather = weather
            }
        }
    }
}
