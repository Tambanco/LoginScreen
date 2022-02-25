//
//  ViewController.swift
//  LoginScreen
//
//  Created by tambanco 🥳 on 25.02.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    var loginView: LoginView!

    override func viewDidLoad() {
        super.viewDidLoad()
       
        setupLoginView()
    }
    
    func setupLoginView() {
        
        loginView = LoginView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        
        view.addSubview(loginView)
        
//        loginView.translatesAutoresizingMaskIntoConstraints = false
//        loginView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        loginView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        loginView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//        loginView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    }
}
