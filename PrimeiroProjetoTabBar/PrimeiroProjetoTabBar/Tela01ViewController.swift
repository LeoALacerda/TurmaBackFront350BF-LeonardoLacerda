//
//  ViewController.swift
//  PrimeiroProjetoTabBar
//
//  Created by Leonardo Lacerda on 25/04/23.
//

import UIKit

class Tela01ViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        print("Vem ai tela 01")
    }
    
    // ViewDidLoad só dispara uma unica vez
    // A tela só é construida a partir do momento que vc seleciona ela na tabBar. A partir do momento que ela é selecionada a tela é construida e ela é apresentada.
    // No momento que vc seleciona novamente para acessar a tela, o ViewDidAppear é acionado, mas o ViewDidLoad não, pois a pagina ja foi construida. Então ela só aparece.
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Tela 01")
    }

}

