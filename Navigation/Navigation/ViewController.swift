//
//  ViewController.swift
//  Navigation
//
//  Created by Leonardo Lacerda on 28/03/23.
//

import UIKit

// MARK: - O PRESENT ele tem a apresentação de um MODAL

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedButton(_ sender: UIButton) {
        let vc: Tela02ViewController? = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
        //vc?.modalPresentationStyle = .fullScreen
        present(vc ?? UIViewController(), animated: true)
    }
    
    @IBAction func tappedButton2(_ sender: UIButton) {
        performSegue(withIdentifier: "show03", sender: nil)
    }
    
    
}

