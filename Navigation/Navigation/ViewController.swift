//
//  ViewController.swift
//  Navigation
//
//  Created by Leonardo Lacerda on 28/03/23.
//

import UIKit

// MARK: - O PRESENT ele tem a apresentação de um MODAL
// MARK: - O Dismiss ele abaixa (volta) a tela quando a exibição é um MODAL

// MARK: - O navigationController?.pushViewController ele tem a apresentacao de uma NATIGATION
// MARK: - O popViewController ele volta a tela quando a exibição é uma navigation!

class ViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //title = "Meu primeiro" -> de maneira programatica
    }

    @IBAction func tappedButton(_ sender: UIButton) {
        let vc: Tela02ViewController? = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
        //vc?.modalPresentationStyle = .fullScreen
        present(vc ?? UIViewController(), animated: true)
    }
    
    @IBAction func tappedButton2(_ sender: UIButton) {
        let vc: Tela03ViewController? = UIStoryboard(name: "Tela03ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela03ViewController") as? Tela03ViewController
        //vc?.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
    }
    
    
}

