//
//  OutgoingTextTableViewCell.swift
//  ChatGPT350BF
//
//  Created by Leonardo Lacerda on 30/05/23.
//

import UIKit

class IncomingTextTableViewCell: UITableViewCell {
    
    static let identifier: String = String(describing: IncomingTextTableViewCell.self)
    
    lazy var messageView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 22
        view.layer.maskedCorners = [ .layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMaxXMaxYCorner]
        view.backgroundColor = .incomingColor
        return view
    }()
    
    lazy var messageLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont(name: "HelveticaNeue-Medium", size: 16)
        label.numberOfLines = 0
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .background
        selectionStyle = .none
        transform = CGAffineTransform(scaleX: 1, y: -1)
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements(){
        contentView.addSubview(messageView)
        messageView.addSubview(messageLabel)
    }
    
    func configConstraints (){
        NSLayoutConstraint.activate([
            messageView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            messageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            messageView.widthAnchor.constraint(lessThanOrEqualToConstant: 250),
            
            messageLabel.topAnchor.constraint(equalTo: messageView.topAnchor, constant: 15),
            messageLabel.leadingAnchor.constraint(equalTo: messageView.leadingAnchor, constant: 15),
            messageLabel.trailingAnchor.constraint(equalTo: messageView.trailingAnchor, constant: -15),
            messageLabel.bottomAnchor.constraint(equalTo: messageView.bottomAnchor, constant: -15),
        ])
    }
    
    public func setupCell(message: String){
        messageLabel.text = message
    }
}


