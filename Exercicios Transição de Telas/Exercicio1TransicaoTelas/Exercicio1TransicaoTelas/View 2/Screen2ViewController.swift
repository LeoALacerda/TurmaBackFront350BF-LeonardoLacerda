//
//  Screen2ViewController.swift
//  Exercicio1TransicaoTelas
//
//  Created by Leonardo Lacerda on 06/04/23.
//

import UIKit

class Screen2ViewController: UIViewController {
    
    @IBOutlet weak var title2Label: UILabel!
    
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedBackButton(_ sender: UIButton) {
        dismiss(animated: true)
    }

}
