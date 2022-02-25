//
//  LoginView.swift
//  LoginScreen
//
//  Created by tambanco 🥳 on 25.02.2022.
//

import UIKit

class LoginView: UIView {
    
    // 1 layer
    let gradientLayerOne: CAGradientLayer = {
        let layer = CAGradientLayer()
        layer.colors = [UIColor(rgb: 0xE7CDDB).cgColor, UIColor(rgb: 0xBD629B).cgColor]
        return layer
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.addSublayer(gradientLayerOne)
        
        gradientLayerOne.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
