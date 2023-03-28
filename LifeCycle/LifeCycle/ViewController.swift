//
//  ViewController.swift
//  LifeCycle
//
//  Created by Leonardo Lacerda on 28/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    // Método que é disparado quando a tela está prestes a ser apresentada (a renderizacao ja feita, vai comecar a apresentar a tela)
    // Utilização: Configurar parte de natigation, configurar animação
    override func viewWillAppear(_ animated: Bool) {
        print(#function)
    }
    
    // O Metodo viewDidLoad é disparado assim que toda a tela for renderizada, sendo assim é disparado uma única vez. (o molde da tela antes dela ser apresentada).
    //Utilização: Configurar elementos (configurar fonte, cor, estilo, disparar request de início, etc...)
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
    }
    
    // Método viewDidAppear é disparado toda vez que a tela é apresentada por completo (quando a apresentaçao da tela ja está concluida)
    // Utilização: Configurar animação e timer
    override func viewDidAppear(_ animated: Bool) {
        print(#function)
    }
    
    // Método que é disparado quando a tela está prestes a sair.
    // Utilização: Configurar animação e timer
    override func viewWillDisappear(_ animated: Bool) {
        print(#function)
    }
    
    // Método que é disparado quando a tela já saiu.
    // Utilização: Configurar animação e timer
    override func viewDidDisappear(_ animated: Bool) {
        print(#function)
    }
}
