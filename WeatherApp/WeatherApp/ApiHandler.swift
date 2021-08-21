//
//  ApiHandler.swift
//  WeatherApp
//
//  Created by DCS on 21/08/21.
//  Copyright © 2021 DCS. All rights reserved.

import Foundation
class ApiHandler {
    static let shared = ApiHandler()
    func search_weather(with name:String) -> [WeatherDataVC] { //Surat
        if let url = URL(string: "https://api.weatherapi.com/v1/current.json?key=35172208ce424ecb90750709212207&q=\(name)&aqi=no"){
            do { let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                do{ let jsonWeather = try decoder.decode(WeatherDataVC.self, from: data)
                    print(jsonWeather.current.condition.icon)
                    return  [jsonWeather]
                }catch {
                    print(error)
                }
                
            } catch {
                print(error)
            }
        }
        
        return [WeatherDataVC]()
    }
}

