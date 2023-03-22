//
//  ViewController.swift
//  PrimeiroAppTextFieldDelegate350BF
//
//  Created by Leonardo Lacerda on 21/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.placeholder = "Digite seu nome"
        nameTextField.delegate = self
        nameTextField.layer.borderWidth = 2
        nameTextField.layer.borderColor = UIColor.lightGray.cgColor
        
    }
    
}

extension ViewController: UITextFieldDelegate {
    
    
    //Quando o teclado subir esse metodo será disparado
    // didBegin -> autocomplete
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("EDITANDO TEXT FIELD")
        textField.layer.borderWidth = 2
        textField.layer.borderColor = UIColor.blue.cgColor
    }
    
    //Quando o teclado abaixa/some da tela
    //Metodo utilizado para fazer validações de campo (por exemplo email, para informar ao usuario se ele digitou um email no formato valido de email)
    //DidEndEdit
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("Fechou teclado")
        if textField.text == "Caio"{
            textField.layer.borderWidth = 0
        }else{
            textField.layer.borderColor = UIColor.red.cgColor
            textField.layer.borderWidth = 2
        }
    }
    
    //Quando pressionamos no botão "return"
    // return -> autocomplete
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("tocou return")
        textField.resignFirstResponder()
        return true
    }
}
