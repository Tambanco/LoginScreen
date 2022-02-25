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
        loginView = LoginView(frame: CGRect(x: 0,
                                            y: CGFloat(Int(view.frame.height) - Int(view.frame.height * 0.45)),
                                            width: view.frame.width,
                                            height: view.frame.width))
        
        view.addSubview(loginView)
        
    }
}
