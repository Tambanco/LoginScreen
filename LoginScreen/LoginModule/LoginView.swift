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
//        layer.backgroundColor = UIColor(rgb: 0xF09754).cgColor
        return layer
    }()
    
    let shapeLayerTwo: CAShapeLayer = {
        let layer = CAShapeLayer()
//        layer.backgroundColor = UIColor(rgb: 0xF09754).cgColor
        return layer
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.addSublayer(shapeLayerOne)
        layer.addSublayer(shapeLayerTwo)
        
        
        backgroundColor = UIColor(white: 1, alpha: 0.5)
        shapeLayerOne.frame = bounds
        shapeLayerTwo.frame = bounds
        
        let pathOne = UIBezierPath()
        pathOne.move(to: CGPoint(x: 0, y: 10))
        pathOne.addLine(to: CGPoint(x: frame.width, y: 0))
        pathOne.addLine(to: CGPoint(x: frame.width, y: frame.height))
        pathOne.addLine(to: CGPoint(x: 0, y: frame.height))
        
        shapeLayerOne.path = pathOne.cgPath
        
        
//        let transform = CATransform3DIdentity
//        gradientLayerOne.transform = CATransform3DRotate(transform, -0.1, 0, 0, 1)
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: frame.width/2, y: 50))
        path.addLine(to: CGPoint(x: frame.width/2 + 50, y: 50))
        path.addLine(to: CGPoint(x: frame.width, y: 10))
        path.addLine(to: CGPoint(x: frame.width, y: frame.height))
        path.addLine(to: CGPoint(x: 0, y: frame.height))
        
        
        shapeLayerTwo.path = path.cgPath
//        gradientLayerTwo.fillColor = UIColor(rgb: 0xF09754, alpha: 0.5).cgColor
        shapeLayerTwo.fillColor = UIColor(white: 1, alpha: 0.5).cgColor
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
