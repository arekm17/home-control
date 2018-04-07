//
//  WebService.swift
//  Home Control
//
//  Created by Arek on 07.04.2018.
//  Copyright © 2018 Arkadiusz Macudziński. All rights reserved.
//

import Foundation

struct WebService<T> {
        
    static func getResource(_ resource: Resource<T>, _ completion: @escaping ((Result<T>) -> ())) {

        let task = URLSession.shared.dataTask(with: resource.url) { (data, response, error) -> Void in
            if let error = error {
                print("WebService call \(resource.url) error: \(error)")
                completion(Result.Error(error))
                return
            }
            
            guard let data = data else {
                return completion(Result.Error(NoDataError.Error))
            }
            
            do {
                let resultResource = try resource.parseMethod(data)
                completion(Result.Success(resultResource))
            } catch let error {
                completion(Result.Error(error))
            }
            
        }
        
        task.resume()
    }
    
    
}

enum NoDataError: Error {
    case Error
}
