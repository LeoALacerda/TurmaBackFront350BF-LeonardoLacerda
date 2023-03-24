//
//  ViewController.swift
//  ExerciciosTextFieldDelegate
//
//  Created by Leonardo Lacerda on 22/03/23.
//

//Criar uma tela de cadastro contendo 3 campos de texto(nome,endereço,senha) e 1 botão cadastrar.
//• Objetivo do App: Faça uma validação campo a campo onde se o campo estiver vazio represente uma borda vermelha de espessura 2.0, se não, manter ele em sua cor padrão(lightGray).
//• Quando o foco estiver no teclado, a cor da sua borda será azul.
//• O botão por Default veem desabilitado, e só poderá ser
//habilitado quando TODOS os campo for preenchidos.
//• Quando o botão estiver habilitado deverá apresentar na área
//de debug a mensagem, “Cadastro realizado com sucesso”

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var addressTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        addressTextField.delegate = self
        passwordTextField.delegate = self
        nameTextField.layer.borderWidth = 2
        nameTextField.layer.borderColor = UIColor.lightGray.cgColor
        addressTextField.layer.borderWidth = 2
        addressTextField.layer.borderColor = UIColor.lightGray.cgColor
        passwordTextField.layer.borderWidth = 2
        passwordTextField.layer.borderColor = UIColor.lightGray.cgColor
        signUpButton.isEnabled = false
        hideKeyboardWhenTappedAround()
    }
    
    @IBAction func tappedSignUpButton(_ sender: UIButton) {
                print("Cadastro realizado com sucesso")
    }
}

extension ViewController: UITextFieldDelegate{
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderColor = UIColor.blue.cgColor
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        // esse de baixo é igual  if textField.hasText == false
        if !textField.hasText{
            textField.layer.borderColor = UIColor.red.cgColor
        }else{
            textField.layer.borderColor = UIColor.lightGray.cgColor
        }
        // if nameTextField.hasText == true && ...
        if nameTextField.hasText && addressTextField.hasText && passwordTextField.hasText{
            signUpButton.isEnabled = true
            }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
}
