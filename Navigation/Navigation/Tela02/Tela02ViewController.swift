//
//  Tela02ViewController.swift
//  Navigation
//
//  Created by Leonardo Lacerda on 28/03/23.
//

import UIKit

// MARK: - O DISMISS ele abaixa (volta) a tela quando a exibição é um MODAL

class Tela02ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedBackButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
