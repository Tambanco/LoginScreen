//
//  LoginView.swift
//  LoginScreen
//
//  Created by tambanco 🥳 on 25.02.2022.
//

import UIKit

class LoginView: UIView {
    
    // gradient
    let gradientLayerOne: CAGradientLayer = {
        let layer = CAGradientLayer()
        layer.colors = [UIColor(rgb: 0xE7CDDB).cgColor, UIColor(rgb: 0xBD629B).cgColor]
        return layer
    }()
    
    // 1 layer
    
    let shapeLayerOne: CAShapeLayer = {
        let layer = CAShapeLayer()
        return layer
    }()
    
    let shapeLayerTwo: CAShapeLayer = {
        let layer = CAShapeLayer()
        return layer
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.addSublayer(shapeLayerOne)
        layer.addSublayer(shapeLayerTwo)
        layer.addSublayer(gradientLayerOne)
        
        shapeLayerOne.frame = bounds
        shapeLayerTwo.frame = bounds
        gradientLayerOne.frame = bounds
        
        // Draw shapeLayerOne
        let pathOne = UIBezierPath()
        pathOne.move(to: CGPoint(x: 0, y: 10))
        pathOne.addLine(to: CGPoint(x: frame.width, y: 0))
        pathOne.addLine(to: CGPoint(x: frame.width, y: frame.height))
        pathOne.addLine(to: CGPoint(x: 0, y: frame.height))
        
        shapeLayerOne.path = pathOne.cgPath
        gradientLayerOne.mask = shapeLayerOne
        gradientLayerOne.opacity = 0.7
        
        // Draw shapeLayerTwo
        let pathTwo = UIBezierPath()
        pathTwo.move(to: CGPoint(x: 0, y: 0))
        pathTwo.addLine(to: CGPoint(x: frame.width/2, y: 50))
        pathTwo.addLine(to: CGPoint(x: frame.width/2 + 50, y: 50))
        pathTwo.addLine(to: CGPoint(x: frame.width, y: 10))
        pathTwo.addLine(to: CGPoint(x: frame.width, y: frame.height))
        pathTwo.addLine(to: CGPoint(x: 0, y: frame.height))

        shapeLayerTwo.path = pathTwo.cgPath
        shapeLayerTwo.fillColor = UIColor(rgb: 0xF09754).cgColor
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
