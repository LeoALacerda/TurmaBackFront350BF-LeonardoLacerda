//
//  Tela02ViewController.swift
//  TransitandoInformacoesEntreTelas350BF
//
//  Created by Leonardo Lacerda on 06/04/23.
//

import UIKit

class Tela02ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
    }

}
