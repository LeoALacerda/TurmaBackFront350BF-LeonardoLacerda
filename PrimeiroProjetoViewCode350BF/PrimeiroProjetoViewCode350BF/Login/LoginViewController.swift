//
//  ViewController.swift
//  PrimeiroProjetoViewCode350BF
//
//  Created by Leonardo Lacerda on 16/05/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    var screen: LoginScreen?
    
    override func loadView() {
        screen = LoginScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
