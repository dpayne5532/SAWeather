//
//  ContentView.swift
//  SA-Weather
//
//  Created by Dan Payne on 12/26/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    
    
    var body: some View {
        ZStack {
            
            BackgroundView(topColor: isNight ? .black : .blue,
                           bottomColor: isNight ? .gray : Color("lightBlue"))
          
            VStack {
                CityTextView(cityName: "Yankton, SD")
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: "70")
                HStack(spacing: 10) {
                    WeatherDayView(dayOfWeek: "TUE", imageName: "sun.max.fill", temperature: 76)
                    WeatherDayView(dayOfWeek: "WED", imageName: "cloud.bolt.fill", temperature: 76)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temperature: 76)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.sun.fill", temperature: 76)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "cloud.sun.fill", temperature: 76)
                    
                }
                Spacer()
                
                Button {
                    
                    isNight.toggle()
                    
                   
                } label:  { WeatherButton(title: "Push me jerk", textColor: .blue, backgroundColor: .white)
                }
            }
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 8) {
            
            Text(dayOfWeek)
                .font(.system(size: 15, weight: .medium))
                .foregroundColor(.white)
                .padding()
            Image(systemName: imageName)
                .symbolRenderingMode(.palette)
                .resizable()
                .foregroundStyle(Color("lightBlue"), .yellow)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
                .padding()
        }
    }
}

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        
        
        
        
        
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    
    
    
    var cityName: String
    
    var body: some View {
        
    Text(cityName)
        
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
        
        
        
        
        
    }
}

struct MainWeatherStatusView: View {
    var imageName : String
    var temperature: String
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
                .padding()
        }
    }
}




