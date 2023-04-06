//
//  ViewController.swift
//  Exercicio1TransicaoTelas
//
//  Created by Leonardo Lacerda on 06/04/23.
//

import UIKit
// MARK: - Crie um app com 2 telas e faça navegação com modal utilizando reference. OBS: crie na 2 tela um botão de voltar

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var showView2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedShowView2Button(_ sender: UIButton) {
        performSegue(withIdentifier: "showScreen2", sender: nil)
    }
    
}

