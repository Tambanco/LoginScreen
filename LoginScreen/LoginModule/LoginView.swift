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
        layer.colors = [UIColor(rgb: 0xff00ff).cgColor,
                        UIColor(rgb: 0xB56591 ).cgColor]
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
        imageView.frame = CGRect(x: 30, y: 200, width: 150, height: 30)
        return imageView
    }()
    
    let pages: UIPageControl = {
        let page = UIPageControl()
        page.numberOfPages = 4
        page.frame = CGRect(x: 0, y: 350, width: 200, height: 300)
        page.pageIndicatorTintColor = .lightGray
        page.currentPageIndicatorTintColor = .darkGray
        return page
    }()
    
    let pageOneLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.text = """
                        Track your work.
                        Get results.
                    """
        return label
    }()
    
    let signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sing Up", for: .normal)
        button.setTitleColor(.darkGray, for: .normal)
        button.layer.cornerRadius = 25
        button.layer.masksToBounds = true
        button.backgroundColor = .white
        return button
    }()
    
    let logInButton: UIButton = {
        let button = UIButton()
        button.setTitle("Log In", for: .normal)
        button.tintColor = .white
        return button
    }()
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.addSublayer(shapeLayerOne)
        layer.addSublayer(shapeLayerTwo)
        layer.addSublayer(gradientLayerOne)
        
        addSubview(corpImage)
        addSubview(pages)
        
        pages.addSubview(pageOneLabel)
        
        addSubview(signUpButton)
        addSubview(logInButton)
        
        corpImage.translatesAutoresizingMaskIntoConstraints = true
        
        pageOneLabel.translatesAutoresizingMaskIntoConstraints = false
        pageOneLabel.leadingAnchor.constraint(equalTo: pages.leadingAnchor, constant: 20).isActive = true
        pageOneLabel.topAnchor.constraint(equalTo: pages.topAnchor, constant: 20).isActive = true
        
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40).isActive = true
        signUpButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40).isActive = true
        signUpButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        signUpButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        signUpButton.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 270).isActive = true
        
        logInButton.translatesAutoresizingMaskIntoConstraints = false
        logInButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40).isActive = true
        logInButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40).isActive = true
        logInButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        logInButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        logInButton.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 320).isActive = true
        
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
