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
        let vc: Tela02ViewController? = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
        vc?.modalPresentationStyle = .formSheet
        vc?.name = nameTextField.text ?? ""
        present(vc ?? UIViewController(), animated: true)
    }
}
