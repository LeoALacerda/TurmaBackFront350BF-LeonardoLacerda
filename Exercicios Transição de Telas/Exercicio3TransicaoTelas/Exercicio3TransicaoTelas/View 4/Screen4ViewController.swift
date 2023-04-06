//
//  Screen4ViewController.swift
//  Exercicio3TransicaoTelas
//
//  Created by Leonardo Lacerda on 06/04/23.
//

import UIKit

class Screen4ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func tappedNextButton(_ sender: UIButton) {
        let vc: Screen5ViewController? = UIStoryboard(name: "Screen5ViewController", bundle: nil).instantiateViewController(withIdentifier: "Screen5ViewController") as? Screen5ViewController
        vc?.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
}
