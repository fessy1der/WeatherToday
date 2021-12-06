//
//  WelcomeUIView.swift
//  WeatherToday
//
//  Created by Festus Obi on 05/12/2021.
//

import SwiftUI
import CoreLocationUI

struct WelcomeUIView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        VStack{
            VStack(spacing:20){
                Text("Welcome to Weather2day")
                    .bold().font(.title)
                
                Text("Please share your location to get the current weather of your location")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation){
                locationManager.requestLocation()
            }
            .cornerRadius(20)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeUIView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeUIView()
    }
}
