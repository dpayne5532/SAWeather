//
//  WeatherButton.swift
//  SA-Weather
//
//  Created by Dan Payne on 12/27/21.
//

import Foundation
import SwiftUI

struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .cornerRadius(10)
            .padding()
        
    }
}
