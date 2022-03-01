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
        loginView = LoginView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height))
        
        view.addSubview(loginView)
    }
}
