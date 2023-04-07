//
//  HomeViewController.swift
//  Exercicio4TrancicaoTelas
//
//  Created by Leonardo Lacerda on 06/04/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    var email: String
    var senha: String
    
    required init?(coder: NSCoder, mail: String, password: String) {
        self.email = mail
        self.senha = password
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailLabel.text = email
        passwordLabel.text = senha
    }


}
