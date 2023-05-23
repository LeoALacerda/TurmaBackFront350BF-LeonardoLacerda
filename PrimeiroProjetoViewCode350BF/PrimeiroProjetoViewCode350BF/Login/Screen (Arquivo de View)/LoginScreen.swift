//
//  LoginScreen.swift
//  PrimeiroProjetoViewCode350BF
//
//  Created by Leonardo Lacerda on 16/05/23.
//

import UIKit
import SnapKit

//A Screen uma classe UIView, que contem todos os elementos o que são exibidos na tela.

// Como criar/ configurar class em ViewCode:
//1o Criar Screen (Ex: LoginViewController -> LoginScren, RegisterViewController -> RegisterScreen)
//2o Método construtor
//3o Criar elemento (NÃO SE ESQUEÇA DO translatesAutoresizingMaskIntoConstraints)
//4o Adicionar elemento
//5o Configurar constraints
//6o Verificar se o addElements e o configConstraints estão sendo chamados no construtor
//7o Chamar view na loadView
//8o Correr para o abraço!

class LoginScreen: UIView {
    
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Login"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Digite seu email:"
    //Desativar autocorreção
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
        return tf
    }()
    
    lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Digite sua senha:"
    //Desativar autocorreção
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.keyboardType = .default
        tf.isSecureTextEntry = true
        return tf
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Entrar no App", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(tappedLogin), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedLogin(_ sender: UIButton){
        print(#function)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        //Nesta ordem: Primeiro cria os elementos e depois configura constraints
        addElements()
        configLoginLabelConstraints()
        configEmailTextFieldConstraints()
        configPasswordTextFieldConstraints()
        configLoginButton()
//        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements(){
        addSubview(loginLabel)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
    }
    
    //MARK: Fazendo as constraints de forma nativa (sem usar SnapKit)
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            
//            loginLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
//            loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
//            emailTextField.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 20),
//            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
//            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
//            emailTextField.heightAnchor.constraint(equalToConstant: 45),
            
            //Abordagem sem referência:
            
//            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10),
//            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
//            passwordTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
//            passwordTextField.heightAnchor.constraint(equalToConstant: 45),
            
            //Abordagem com referência:
            
//            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
//            passwordTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
//            passwordTextField.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
//            passwordTextField.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),
            
//            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
//            loginButton.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
//            loginButton.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
//            loginButton.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),
        ])
    }
    
    //MARK: Utilizando SnapKit com CocoaPods:
    // inset = negativo
    // offset = positivo
    
    func configLoginLabelConstraints(){
        loginLabel.snp.makeConstraints { loginLabel in
            loginLabel.top.equalTo(safeAreaLayoutGuide.snp.top).offset(20)
            loginLabel.centerX.equalToSuperview()
        }
    }
    
    func configEmailTextFieldConstraints(){
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(loginLabel.snp.bottom).offset(20)
            make.trailing.equalToSuperview().inset(20)
            make.leading.equalToSuperview().offset(20)
            make.height.equalTo(45)
        }
    }
    
    func configPasswordTextFieldConstraints(){
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(20)
            make.trailing.equalTo(emailTextField.snp.trailing)
            make.leading.equalTo(emailTextField.snp.leading)
            make.height.equalTo(emailTextField.snp.height)
        }
    }
    
    func configLoginButton(){
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(20)
            make.trailing.equalTo(emailTextField.snp.trailing)
            make.leading.equalTo(emailTextField.snp.leading)
            make.height.equalTo(emailTextField.snp.height)
        }
    }
}
