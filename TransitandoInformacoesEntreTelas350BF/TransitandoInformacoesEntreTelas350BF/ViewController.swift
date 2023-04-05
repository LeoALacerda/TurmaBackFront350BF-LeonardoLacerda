//
//  ViewController.swift
//  TransitandoInformacoesEntreTelas350BF
//
//  Created by Leonardo Lacerda on 04/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedShowTela02Button(_ sender: UIButton) {
        let vc: Tela02ViewController? = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(identifier: "Tela02ViewController") { coder -> Tela02ViewController in
            return Tela02ViewController(coder: coder, name: self.nameTextField.text ?? " ")
        }
        vc?.modalPresentationStyle = .formSheet
        present(vc ?? UIViewController(), animated: true)
    }
}
