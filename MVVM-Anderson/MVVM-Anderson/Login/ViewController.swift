//
//  ViewController.swift
//  MVVM-Anderson
//
//  Created by Leonardo Lacerda on 18/04/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedMVCButton(_ sender: UIButton) {
        if let vc = UIStoryboard(name: String(describing: MVC.self), bundle: nil).instantiateViewController(withIdentifier: String(describing: MVC.self)) as? MVC {
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    @IBAction func tappedMVVMButton(_ sender: UIButton) {
        if let vc = UIStoryboard(name: String(describing: "MVVM"), bundle: nil).instantiateViewController(withIdentifier: String(describing: MVVM.self)) as? MVVM {
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
}

