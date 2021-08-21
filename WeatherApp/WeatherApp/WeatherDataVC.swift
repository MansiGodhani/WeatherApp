//
//  WeatherDataVC.swift
//  WeatherApp
//
//  Created by DCS on 21/08/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import Foundation


class WeatherDataVC:Decodable{
    var location: Weather
    var current: Current
}
class Weather:Decodable
{
    var name = ""
    var region = ""
    var country = ""
    var tz_id = ""
    var localtime = ""
}

class Current:Decodable{
    var last_updated = ""
    var is_day:Int
    var temp_c:Float
    var temp_f :Float
    var condition: Condition
    var wind_mph:Float
    var wind_kph:Float
    var pressure_mb:Int
    var pressure_in:Float
    var humidity:Int
    var cloud:Int
    var uv:Float
}

class Condition:Decodable
{
    var text = ""
    var icon = ""
    var code:Int
}

/*{
 "location": {
 "name": "Surat",
 "region": "Gujarat",
 "country": "India",
 "lat": 20.97,
 "lon": 72.9,
 "tz_id": "Asia/Kolkata",
 "localtime_epoch": 1626931205,
 "localtime": "2021-07-22 10:50"
 },
 "current": {
 "last_updated_epoch": 1626930900,
 "last_updated": "2021-07-22 10:45",
 "temp_c": 27.8,
 "temp_f": 82,
 "is_day": 1,
 "condition": {
 "text": "Light rain shower",
 "icon": "//cdn.weatherapi.com/weather/64x64/day/353.png",
 "code": 1240
 },
 "wind_mph": 15.4,
 "wind_kph": 24.8,
 "wind_degree": 259,
 "wind_dir": "W",
 "pressure_mb": 1001,
 "pressure_in": 30,
 "precip_mm": 0.7,
 "precip_in": 0.03,
 "humidity": 85,
 "cloud": 80,
 "feelslike_c": 32.7,
 "feelslike_f": 90.9,
 "vis_km": 10,
 "vis_miles": 6,
 "uv": 6,
 "gust_mph": 23.7,
 "gust_kph": 38.2
 }
 }*/
