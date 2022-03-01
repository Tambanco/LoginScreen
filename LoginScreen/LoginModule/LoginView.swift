//
//  LoginView.swift
//  LoginScreen
//
//  Created by tambanco 🥳 on 25.02.2022.
//

import UIKit

class LoginView: UIView {
    
    // MARK: - Elements
    // gradient
    let gradientLayerOne: CAGradientLayer = {
        let layer = CAGradientLayer()
        layer.colors = [UIColor(rgb: 0xEFDEE7).cgColor,
                        UIColor(rgb: 0xB56591).cgColor]
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
    
    // 2 layer
    let corpImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Asana_logo.png")
        imageView.backgroundColor = .red
        imageView.frame = CGRect(x: 99, y: 99, width: 99, height: 99)
        return imageView
    }()
    
    let pages: UIPageControl = {
        let page = UIPageControl()
        page.numberOfPages = 3
        return page
    }()
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.addSublayer(shapeLayerOne)
        layer.addSublayer(shapeLayerTwo)
        layer.addSublayer(gradientLayerOne)
        
        addSubview(corpImage)
        addSubview(pages)
        
        corpImage.translatesAutoresizingMaskIntoConstraints = true
        corpImage.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1).isActive = true
        corpImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        
        shapeLayerOne.frame = bounds
        shapeLayerTwo.frame = bounds
        gradientLayerOne.frame = bounds
        
        // Draw shapeLayerOne
        let pathOne = UIBezierPath()
        pathOne.move(to: CGPoint(x: 0, y: 590))
        pathOne.addLine(to: CGPoint(x: frame.width, y: 575))
        pathOne.addLine(to: CGPoint(x: frame.width, y: frame.height))
        pathOne.addLine(to: CGPoint(x: 0, y: frame.height))
        
        shapeLayerOne.path = pathOne.cgPath
        gradientLayerOne.mask = shapeLayerOne
        gradientLayerOne.opacity = 0.8
        
        // Draw shapeLayerTwo
        let pathTwo = UIBezierPath()
        pathTwo.move(to: CGPoint(x: -200, y: 600))
        pathTwo.addCurve(to: CGPoint(x: frame.width, y: 590),
                         controlPoint1: CGPoint(x: 0, y: 520),
                         controlPoint2: CGPoint(x: 250, y: 620))
        pathTwo.addLine(to: CGPoint(x: frame.width, y: frame.height))
        pathTwo.addLine(to: CGPoint(x: 0, y: frame.height))
        
        shapeLayerTwo.path = pathTwo.cgPath
        shapeLayerTwo.fillColor = UIColor(rgb: 0xF09754).cgColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
