//
//  Screen2ViewController.swift
//  Exercicio3TransicaoTelas
//
//  Created by Leonardo Lacerda on 06/04/23.
//

import UIKit

class Screen2ViewController: UIViewController {
    
    @IBOutlet weak var title2Label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedNextButton(_ sender: UIButton) {
        let vc: Screen3ViewController? = UIStoryboard(name: "Screen3ViewController", bundle: nil).instantiateViewController(withIdentifier: "Screen3ViewController") as? Screen3ViewController
        vc?.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
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
