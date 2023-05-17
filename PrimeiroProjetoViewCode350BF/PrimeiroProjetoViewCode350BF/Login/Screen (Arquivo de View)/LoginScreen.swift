//
//  LoginScreen.swift
//  PrimeiroProjetoViewCode350BF
//
//  Created by Leonardo Lacerda on 16/05/23.
//

import UIKit

//A Screen uma classe UIView, que contem todos os elementos o que são exibidos na tela.

// Como criar/ configurar class em ViewCode:
//1o Criar Screen (Ex: LoginViewController -> LoginScren, RegisterViewController -> RegisterScreen)
//2o Método construtor
//3o Criar elemento (NÃO SE ESQUEÇA DO translatesAutoresizingMaskIntoConstraints)
//4o Adicionar elemento
//5o Configurar constraints
//6o Chamar view na loadView
//7o Correr para o abraço!

class LoginScreen: UIView {
    
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Login"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        return label
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        //Nesta ordem: Primeiro cria os elementos e depois configura constraints
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements(){
        addSubview(loginLabel)
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            
            loginLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            loginLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            
        ])
    }
    
}
