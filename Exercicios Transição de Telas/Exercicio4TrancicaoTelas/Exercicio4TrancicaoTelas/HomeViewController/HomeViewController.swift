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
    
    var email: String = ""
    var senha: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailLabel.text = email
        passwordLabel.text = senha
    }


}
