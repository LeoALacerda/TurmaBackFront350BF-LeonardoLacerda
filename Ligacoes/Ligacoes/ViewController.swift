//
//  ViewController.swift
//  Ligacoes
//
//  Created by Leonardo Lacerda on 16/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Alfredo"
        
    }

    @IBAction func tappedLoginButton(_ sender: UIButton) {
        print("Cliquei no botão")
    }
    
}

