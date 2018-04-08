//
//  DimmableLightDeviceViewModel.swift
//  Home Control
//
//  Created by Arek on 08.04.2018.
//  Copyright © 2018 Arkadiusz Macudziński. All rights reserved.
//

import Foundation

class DimmableLightDeviceViewModel: DeviceViewModel {
    
    let label: String
    
    init(_ device: Device) {
        self.label = device.name
    }
    
}
