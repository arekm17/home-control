//
//  Resource.swift
//  Home Control
//
//  Created by Arek on 07.04.2018.
//  Copyright © 2018 Arkadiusz Macudziński. All rights reserved.
//

import Foundation


struct Resource<T> {
    
    let url: URL
    let parseMethod: (Data) throws -> T 
    
}
