//
//  Screen6ViewController.swift
//  Exercicio3TransicaoTelas
//
//  Created by Leonardo Lacerda on 06/04/23.
//

import UIKit

class Screen6ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func tappedFirstViewButton(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
}
