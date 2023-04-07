//
//  ForgotPasswordViewController.swift
//  Exercicio4TrancicaoTelas
//
//  Created by Leonardo Lacerda on 06/04/23.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var newPasswordButton: UIButton!
    
    @IBOutlet weak var newPasswordLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    var emailForgotPassword: String = ""
    
    let name: String
    
    required init?(coder: NSCoder, name: String) {
        self.name = name
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.delegate = self
        
        titleLabel.shadowColor = UIColor.lightGray
        titleLabel.shadowOffset = CGSize(width:-1, height: -1)
        
        emailTextField.layer.cornerRadius = 15
        emailTextField.layer.borderWidth = 2
        emailTextField.layer.borderColor = UIColor(named: "OrangeMeuTreino")?.cgColor
        emailTextField.clipsToBounds = true
        
        newPasswordLabel.text = ""
        
        emailTextField.text = name
    }
    
    @IBAction func tappedNewPasswordButton(_ sender: UIButton) {
        if emailTextField.hasText == true{
            newPasswordLabel.textColor = UIColor.systemGreen
            newPasswordLabel.text = "Redefinição de senha enviada para seu email!"
            emailTextField.layer.borderColor = UIColor.systemGreen.cgColor
        }else{
            newPasswordLabel.textColor = UIColor.red
            newPasswordLabel.text = "Insira um email válido!"
            emailTextField.layer.borderColor = UIColor.red.cgColor
        }
    }
    
}

extension ForgotPasswordViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}
