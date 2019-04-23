//
//  WeatherDataModel.swift
//  WeatherApp
//
//  Created by Angela Yu on 24/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class WeatherDataModel {

    //Declare your model variables here
    var temperature : Int = 0
    var condition : Int = 0
    var city : String = ""
    var weatherIconName : String = ""
    
    //This method turns a condition code into the name of the weather condition image
    
    func updateWeatherIcon(condition: Int) -> String {
        
    switch (condition) {
    
        case 0...300 :
            return "thunderstorm"
        
        case 301...500 :
            return "rain"
        
        case 501...600 :
            return "snow"
        
        case 601...700 :
            return "snow"
        
        case 701...771 :
            return "fog"
        
        case 772...799 :
            return "windy"
        
        case 800 :
            return "sunny"
        
        case 801...804 :
            return "party-cloudy"
        
        case 900...903, 905...1000  :
            return "thunderstorm"
        
        case 903 :
            return "snow"
        
        case 904 :
            return "sunny"
        
        default :
            return "dunno"
        }

    }
}
