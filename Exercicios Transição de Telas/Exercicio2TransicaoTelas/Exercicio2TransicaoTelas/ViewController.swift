//
//  ViewController.swift
//  Exercicio2TransicaoTelas
//
//  Created by Leonardo Lacerda on 06/04/23.
//

import UIKit

// MARK: - Crie um app com 2 telas e faça navegação com modal de maneira programática. OBS: crie na 2 tela um botão de voltar


class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var showScreen2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedShowScreen2Button(_ sender: UIButton) {
        let vc: Screen2ViewController? = UIStoryboard(name: "Screen2ViewController", bundle: nil).instantiateViewController(withIdentifier: "Screen2ViewController") as? Screen2ViewController
        //vc?.modalPresentationStyle = .formSheet
        present(vc ?? UIViewController(), animated: true)
    }
    
}

