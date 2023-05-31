//
//  HomeScreen.swift
//  ChatGPT350BF
//
//  Created by Leonardo Lacerda on 25/05/23.
//

import UIKit

protocol HomeScreenProtocol: AnyObject{
    func sendMessage(text: String)
}

class HomeScreen: UIView {
    
    weak var delegate: HomeScreenProtocol?
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.backgroundColor = .background
        //  no ViewCode a celula nao tem .nib, pois os elementos sao adicionados na propria classe TableViewCell. Entao usamos o TableViewCell.self
        tableView.register(OutgoingTextTableViewCell.self, forCellReuseIdentifier: OutgoingTextTableViewCell.identifier)
        tableView.register(IncomingTextTableViewCell.self, forCellReuseIdentifier: IncomingTextTableViewCell.identifier)
        tableView.transform = CGAffineTransform(scaleX: 1, y: -1)
        return tableView
    }()
    
    lazy var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .background
        return view
    }()
    
    lazy var subContentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.clipsToBounds = true
        view.layer.cornerRadius = 8
        view.layer.borderWidth = 0.1
        return view
    }()
    
    lazy var messageTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Digite aqui..."
        //Desativar autocorreção
        tf.autocorrectionType = .no
        tf.delegate = self
        tf.borderStyle = .none
        tf.keyboardType = .default
        return tf
    }()
    
    lazy var sendButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "send"), for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(tappedSendButton), for: .touchUpInside)
        button.backgroundColor = .pink
        button.isEnabled = false
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        return button
    }()
    
        @objc func tappedSendButton(_ sender: UIButton){
            delegate?.sendMessage(text: messageTextField.text ?? "")
            tableView.reloadData()
            messageTextField.text = ""
            sendButton.isEnabled = false
        }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .background
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements(){
        addSubview(tableView)
        addSubview(contentView)
        contentView.addSubview(subContentView)
        subContentView.addSubview(messageTextField)
        contentView.addSubview(sendButton)
    }
        
    func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }
    
    func configConstraints(){
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: contentView.topAnchor),
            
            contentView.bottomAnchor.constraint(equalTo: keyboardLayoutGuide.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 80),
            
            subContentView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            subContentView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            subContentView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            subContentView.heightAnchor.constraint(equalToConstant: 50),
            
            messageTextField.centerYAnchor.constraint(equalTo: subContentView.centerYAnchor),
            messageTextField.trailingAnchor.constraint(equalTo: sendButton.leadingAnchor, constant: -5),
            messageTextField.leadingAnchor.constraint(equalTo: subContentView.leadingAnchor, constant: 10),
            messageTextField.heightAnchor.constraint(equalToConstant: 40),
            
            sendButton.centerYAnchor.constraint(equalTo: subContentView.centerYAnchor, constant: -10),
            sendButton.trailingAnchor.constraint(equalTo: subContentView.trailingAnchor, constant: -5),
            sendButton.heightAnchor.constraint(equalToConstant: 50),
            sendButton.widthAnchor.constraint(equalToConstant: 50),
        ])
    }
    
}

extension HomeScreen: UITextFieldDelegate{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let text = textField.text as NSString? else {return false}
        let updateText = text.replacingCharacters(in: range, with: string)
        if updateText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty{
            sendButton.isEnabled = false
        }else{
            sendButton.isEnabled = true
        }
        return true
    }
}
