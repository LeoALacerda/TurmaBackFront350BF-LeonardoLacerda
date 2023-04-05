//
//  Tela03.swift
//  Navigation
//
//  Created by Leonardo Lacerda on 28/03/23.
//


import UIKit

class Tela03ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Tela 3"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedBackButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func tappedShow04Button(_ sender: UIButton) {
        let vc: Tela04ViewController? = UIStoryboard(name: "Tela04ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela04ViewController") as? Tela04ViewController
        //vc?.modalPresentationStyle = .fullScreen
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
