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
        let infoUseCase = GetSettingsInfoUseCase()
        let infoVm = InfoViewModel(getSettingsInfoUseCase: infoUseCase)
        
        let sectionsUseCase = GetSectionsUseCase()
        let sectionsVm = SectionsViewModel(getSectionsUseCase: sectionsUseCase)
        
        let vc = MainViewController(infoViewModel: infoVm, sectionsViewModel: sectionsVm)
        vc.sectionsViewDelegate = self
        rootViewController.addChildViewController(vc)
    }
    
    
}

extension AppFlowController: SectionsViewDelgate {
    func onSelectedSection(_ section: Section) {
        let getRoomsUseCase = GetRoomsUseCase()
        let roomsViewModel = RoomsViewModel(getRoomsUseCase: getRoomsUseCase)
        let roomsViewController = RoomsViewController(viewModel: roomsViewModel)
        roomsViewController.sectionId = section.id
        
        rootViewController.pushViewController(roomsViewController, animated: true)
    }
}
