//
//  SelectionViewController.swift
//  NotificationCenterEProtocol
//
//  Created by Leonardo Lacerda on 04/05/23.
//

import UIKit

// Para criar um protocolo usamos a palavra protocol, seguido do nomedaViewController+Protocol, e depois o :AnyObject{ }
protocol SelectionViewControllerProtocol: AnyObject {
    func tappedMacBook()
    func tappediMac()
    // Com transição de dados
    func teste(nome: String)
}

class SelectionViewController: UIViewController {
    
    @IBOutlet weak var optionsLabel: UILabel!
    @IBOutlet weak var macbookButton: UIButton!
    @IBOutlet weak var iMacButton: UIButton!
    
    //weak: Variavel com referência fraca.
    weak var delegate: SelectionViewControllerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pressedMacbookButton(_ sender: UIButton) {
//        NotificationCenter.default.post(name: .macbook, object: UIColor.purple)
        delegate?.tappedMacBook()
        dismiss(animated: true)
    }
    
    @IBAction func pressediMacButton(_ sender: UIButton) {
//        NotificationCenter.default.post(name: .imac, object: UIColor.cyan)
//        delegate?.tappediMac()
        delegate?.teste(nome: "Caio F")
        dismiss(animated: true)
    }
}

