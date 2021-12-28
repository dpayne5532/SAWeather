//
//  ContentView.swift
//  SA-Weather
//
//  Created by Dan Payne on 12/26/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
               
                VStack(spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                
                Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                        .padding()
                }
                
                
                
                
             
                HStack(spacing: 10) {
                    
                    
                    WeatherDayView(dayOfWeek: "TUE", imageName: "sun.max.fill", temperature: 76)
                    WeatherDayView(dayOfWeek: "WED", imageName: "cloud.bolt.fill", temperature: 76)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temperature: 76)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.sun.fill", temperature: 76)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "cloud.sun.fill", temperature: 76)
                    
                    
                    
                    
                    
                    
                }
                Spacer()
                
                
                
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
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
                .padding()
        }
    }
}
