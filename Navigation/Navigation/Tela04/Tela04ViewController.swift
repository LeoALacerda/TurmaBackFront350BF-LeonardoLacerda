//
//  Tela04ViewController.swift
//  Navigation
//
//  Created by Leonardo Lacerda on 04/04/23.
//

import UIKit

class Tela04ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Tela 04"
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func tappedBackButton(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
