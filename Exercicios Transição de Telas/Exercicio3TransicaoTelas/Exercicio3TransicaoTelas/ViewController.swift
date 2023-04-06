//
//  ViewController.swift
//  Exercicio3TransicaoTelas
//
//  Created by Leonardo Lacerda on 06/04/23.
//

import UIKit

// MARK: -vCrie um app com 6 telas e faça navegação com navigation de maneira programática. OBS: crie em cada  tela um botão de voltar e na última tela crie um botão para voltar ao início do app.


class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedNextButton(_ sender: UIButton) {
        
        let vc: Screen2ViewController? = UIStoryboard(name: "Screen2ViewController", bundle: nil).instantiateViewController(withIdentifier: "Screen2ViewController") as? Screen2ViewController
        vc?.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)

        
    }
    
}

