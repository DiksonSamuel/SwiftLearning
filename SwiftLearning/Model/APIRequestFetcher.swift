//
//  APIRequestFetcher.swift
//  SwiftLearning
//
//  Created by Dikson Samuel on 03/03/20.
//  Copyright © 2020 Dikson Samuel. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

enum NetworkError: Error {
    case failure
    case success
}

class APIRequestFetcher {
    
    static func api(url: String, completionHandler: @escaping (JSON?, NetworkError) -> ()) {
        
        AF.request(url).response { response in
            
            guard let data = response.data else {
                completionHandler(nil, .failure)
                return
            }
            
            let decoder = JSONDecoder()

            guard let results = response.data else { return }
            print("hello");
            let json = try? JSON(data:results)
            
            completionHandler(json, .success)
            
        }

        
    }
}
