//
//  ViewController.swift
//  PrimeiroAppTextFieldDelegate350BF
//
//  Created by Leonardo Lacerda on 21/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.placeholder = "Digite seu nome:"
        emailTextField.placeholder = "Digite seu email:"
        nameTextField.delegate = self
        emailTextField.delegate = self
        nameTextField.layer.borderColor = UIColor.purple.cgColor
        emailTextField.layer.borderColor = UIColor.orange.cgColor
    }
    
}

extension ViewController: UITextFieldDelegate {
    

    //Quando o teclado subir esse metodo será disparado
    // didBegin -> autocomplete
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("EDITANDO TEXT FIELD")
        if textField == nameTextField{
            nameTextField.layer.borderWidth = 2
        }else{
            emailTextField.layer.borderWidth = 2
        }
    }
    
    //Quando o teclado abaixa/some da tela
    //Metodo utilizado para fazer validações de campo (por exemplo email, para informar ao usuario se ele digitou um email no formato valido de email)
    //DidEndEdit
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("Fechou teclado")
        textField.layer.borderWidth = 0
//        if nameTextField.hasText == true && emailTextField.hasText == true{
//            view.backgroundColor = .blue
//        }else{
//            view.backgroundColor = .red
//        }
    }
    
    //Quando pressionamos no botão "return"
    // return -> autocomplete
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("tocou return")
        textField.resignFirstResponder()
        return true
    }
}
