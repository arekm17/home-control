//
//  AppFlowController.swift
//  Home Control
//
//  Created by Arek on 04.04.2018.
//  Copyright © 2018 Arkadiusz Macudziński. All rights reserved.
//

import Foundation
import UIKit

class AppFlowController {
    
    let rootViewController = UINavigationController()
    
    
    func setup() {
        let vc = MainViewController(infoViewModel: InfoViewModel())
        rootViewController.addChildViewController(vc)
    }
    
    
}
