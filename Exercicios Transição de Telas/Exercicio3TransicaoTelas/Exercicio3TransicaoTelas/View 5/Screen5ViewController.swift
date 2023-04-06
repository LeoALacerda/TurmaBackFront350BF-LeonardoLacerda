//
//  Screen5ViewController.swift
//  Exercicio3TransicaoTelas
//
//  Created by Leonardo Lacerda on 06/04/23.
//

import UIKit

class Screen5ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func tappedNextButton(_ sender: Any) {
        
        let vc: Screen6ViewController? = UIStoryboard(name: "Screen6ViewController", bundle: nil).instantiateViewController(withIdentifier: "Screen6ViewController") as? Screen6ViewController
        vc?.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
}
