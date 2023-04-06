//
//  Screen3ViewController.swift
//  Exercicio3TransicaoTelas
//
//  Created by Leonardo Lacerda on 06/04/23.
//

import UIKit

class Screen3ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedNextButton(_ sender: UIButton) {
        let vc: Screen4ViewController? = UIStoryboard(name: "Screen4ViewController", bundle: nil).instantiateViewController(withIdentifier: "Screen4ViewController") as? Screen4ViewController
        vc?.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
}
