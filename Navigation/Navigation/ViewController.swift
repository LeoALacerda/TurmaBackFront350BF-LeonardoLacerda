//
//  ViewController.swift
//  Navigation
//
//  Created by Leonardo Lacerda on 28/03/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedButton(_ sender: UIButton) {
        performSegue(withIdentifier: "Tela02", sender: nil)
    }
    
    @IBAction func tappedButton2(_ sender: UIButton) {
        performSegue(withIdentifier: "show03", sender: nil)
    }
    
    
}

