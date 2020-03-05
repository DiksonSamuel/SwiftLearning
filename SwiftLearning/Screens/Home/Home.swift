//
//  Home.swift
//  SwiftLearning
//
//  Created by Dikson Samuel on 15/02/20.
//  Copyright © 2020 Dikson Samuel. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Home: View {
    
    @ObservedObject var locationManager = LocationManager()
    var loader = true;

    var userLatitude: String {
        return "\(locationManager.lastLocation?.coordinate.latitude ?? 0)"
    }

    var userLongitude: String {
        return "\(locationManager.lastLocation?.coordinate.longitude ?? 0)"
    }

    
    var body: some View {
        VStack {
          Button(action: {
            deleteData()
         }) {
             Text("logout")
         }
        }.onAppear {
            self.callWeatherData()
        }
    }
    
    func callWeatherData() {
        var loader1 = true;
        Weather.getWeatherData(lattitude: userLatitude, longitude: userLongitude, completionHandler: { results, error in
            loader1 = false;
            //loader = loader1
        })
        
    }
}

func deleteData() {
    Auth.deleteCurrentUser();

}



struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
