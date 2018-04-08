//
//  DimmableDeviceTableViewCell.swift
//  Home Control
//
//  Created by Arek on 08.04.2018.
//  Copyright © 2018 Arkadiusz Macudziński. All rights reserved.
//

import Foundation
import UIKit

class DimmableDeviceTableViewCell: UITableViewCell {
    
    static let cellIdentifier = String("DimmableDeviceTableViewCell")
    
    let label = UILabel()
    
    var viewModel: DimmableLightDeviceViewModel?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)

        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder) not implemented")
    }
    
    func setupView() {
        backgroundColor = .red
        
        self.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            label.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            ])
    }
    
    func bind(viewModel: DimmableLightDeviceViewModel) {
        self.viewModel = viewModel
        self.label.text = self.viewModel?.label
    }
    

}
