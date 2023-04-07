//
//  ViewController.swift
//  Exercicio4TrancicaoTelas
//
//  Created by Leonardo Lacerda on 06/04/23.
//

import UIKit

//MARK: - Crie um app com 2 telas e transite um texto(pode criar um textfield e um botão igual fizemos em aula) da tela 1 para tela 2 e exiba o seu texto na tela 2

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!

    
    var email: String = ""
    var senha: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        titleLabel.shadowColor = UIColor.lightGray
        titleLabel.shadowOffset = CGSize(width:-1, height: -1)
        
        emailTextField.layer.cornerRadius = 15
        emailTextField.layer.borderWidth = 2
        emailTextField.layer.borderColor = UIColor(named: "OrangeMeuTreino")?.cgColor
        emailTextField.clipsToBounds = true
        
        passwordTextField.layer.cornerRadius = 15
        passwordTextField.layer.borderWidth = 2
        passwordTextField.layer.borderColor = UIColor(named: "OrangeMeuTreino")?.cgColor
        passwordTextField.clipsToBounds = true
        
        
    }
    
    
    @IBAction func tappedForgotPasswordButton(_ sender: UIButton) {
        
        email = emailTextField.text ?? ""
        
        let vc: ForgotPasswordViewController? = UIStoryboard(name: "ForgotPasswordViewController", bundle: nil).instantiateViewController(identifier: "ForgotPasswordViewController", creator: { coder -> ForgotPasswordViewController? in
            return ForgotPasswordViewController(coder: coder, name: self.emailTextField.text ?? "")
            
        })
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
    }
    
    @IBAction func tappedLoginButton(_ sender: UIButton) {
        
        if emailTextField.hasText == true && passwordTextField.hasText == true{
            email = emailTextField.text ?? ""
            senha = passwordTextField.text ?? ""
            let vc: HomeViewController? = UIStoryboard(name: "HomeViewController", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController
            vc?.email = email
            vc?.senha = senha
            navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        }
        
    }
}

extension ViewController: UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailTextField{
            passwordTextField.becomeFirstResponder()
        }else{
            textField.resignFirstResponder()
        }
        return true
    }
    
    
}
