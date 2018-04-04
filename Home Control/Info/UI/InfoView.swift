//
//  InfoView.swift
//  Home Control
//
//  Created by Arek on 04.04.2018.
//  Copyright © 2018 Arkadiusz Macudziński. All rights reserved.
//

import Foundation
import UIKit

class InfoView: UIView {
    
    let infoViewModel: InfoViewModel
    
    let serialNoLabel = UILabel(text: "Serial number:")
    
    let serialNo: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: label.font.pointSize)
        label.text = "--asdasdasd-"
        return label
    }()
    
    let macAddrLabel = UILabel(text: "Mac address:")
    
    let macAddr: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: label.font.pointSize)
        label.text = "---"
        return label
    }()
    
    let softVerLabel = UILabel(text: "Software version:")
    
    let softVer: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: label.font.pointSize)
        label.text = "---"
        return label
    }()
    
    
    init(viewModel: InfoViewModel) {
        self.infoViewModel = viewModel
        super.init(frame: CGRect.zero)
        
        setupView()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("unused constructor")
    }
    
    func setupView() {
        
        addSubview(serialNoLabel)
        addSubview(serialNo)
        addSubview(macAddrLabel)
        addSubview(macAddr)
        addSubview(softVerLabel)
        addSubview(softVer)
        
    }
    
    
    func setupConstraints() {
        
        let labelW = CGFloat(140)
        
        serialNoLabel.translatesAutoresizingMaskIntoConstraints = false
        serialNoLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        serialNoLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        serialNoLabel.widthAnchor.constraint(equalToConstant: labelW).isActive = true
        
        serialNo.translatesAutoresizingMaskIntoConstraints = false
        serialNo.bottomAnchor.constraint(equalTo: serialNoLabel.bottomAnchor).isActive = true
        serialNo.leadingAnchor.constraint(equalTo: serialNoLabel.trailingAnchor, constant: 10).isActive = true
        serialNo.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
        macAddrLabel.translatesAutoresizingMaskIntoConstraints = false
        macAddrLabel.topAnchor.constraint(equalTo: serialNoLabel.bottomAnchor, constant: 20).isActive = true
        macAddrLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        macAddrLabel.widthAnchor.constraint(equalToConstant: labelW).isActive = true
        
        macAddr.translatesAutoresizingMaskIntoConstraints = false
        macAddr.bottomAnchor.constraint(equalTo: macAddrLabel.bottomAnchor).isActive = true
        macAddr.leadingAnchor.constraint(equalTo: macAddrLabel.trailingAnchor, constant: 10).isActive = true
        macAddr.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true

        softVerLabel.translatesAutoresizingMaskIntoConstraints = false
        softVerLabel.topAnchor.constraint(equalTo: macAddrLabel.bottomAnchor, constant: 20).isActive = true
        softVerLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        softVerLabel.widthAnchor.constraint(equalToConstant: labelW).isActive = true
        
        softVer.translatesAutoresizingMaskIntoConstraints = false
        softVer.bottomAnchor.constraint(equalTo: softVerLabel.bottomAnchor).isActive = true
        softVer.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        softVer.leadingAnchor.constraint(equalTo: softVerLabel.trailingAnchor, constant: 10).isActive = true

        
    }
}
