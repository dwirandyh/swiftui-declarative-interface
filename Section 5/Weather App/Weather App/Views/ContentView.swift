//
//  ContentView.swift
//  Weather App
//
//  Created by Dwi Randy Herdinanto on 08/04/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var weatherVM : WeatherViewModel
    
    init(){
        self.weatherVM = WeatherViewModel()
    }
    
    var body: some View {
        NavigationView{
            VStack(spacing: 12){
                TextField("Enter city name", text: self.$weatherVM.cityName){
                    self.weatherVM.search()
                }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("Temperature")
                    .font(.title)
                
                Text("\(self.weatherVM.temperature)")
                    .font(.largeTitle)
            }
            .padding()
            .navigationBarTitle(Text("Simple Weather App"), displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
