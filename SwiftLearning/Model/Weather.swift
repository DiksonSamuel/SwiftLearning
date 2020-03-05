//
//  Weather.swift
//  SwiftLearning
//
//  Created by Dikson Samuel on 02/03/20.
//  Copyright © 2020 Dikson Samuel. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class Weather {
    static func getWeatherData(lattitude : String, longitude: String, completionHandler: @escaping (JSON?, String) -> ()) {
        var url = "http://api.openweathermap.org/data/2.5/weather?lat=\(lattitude)&lon=\(longitude)&appid=a8aaa0ae0cffa88a32a9ecfbb188a0fe";
        
        var resultData: JSON? = nil
        
        APIRequestFetcher.api(url: url, completionHandler: { results, error in
            if case .failure = error {
                completionHandler(nil, "error")
            }
            
            guard let results = results, !results.isEmpty else {
                return
            }
            
            completionHandler(results, "success")
            
        })
        

    }
    
    
}
