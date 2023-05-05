//
//  ViewController.swift
//  NotificationCenterEProtocol
//
//  Created by Leonardo Lacerda on 04/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var customImageView: UIImageView!
    @IBOutlet weak var customLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        customLabel.text = ""
        configObserver()
    }
    
    func configObserver(){
        NotificationCenter.default.addObserver(self, selector: #selector(updateMacbook), name: .macbook, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(updateImac), name: .imac, object: nil)
    }
    
    @objc func updateMacbook(_ notification: NSNotification){
        print(#function)
        customImageView.image = UIImage(named: "macbook_pro")
        customLabel.text = "MacBook Pro"
        view.backgroundColor = notification.object as? UIColor
    }
    
    @objc func updateImac(_ notification: NSNotification){
        print(#function)
        customImageView.image = UIImage(named: "imac_pro")
        customLabel.text = "Imac das Galaxias"
        view.backgroundColor = notification.object as? UIColor
    }

    @IBAction func pressedChooseButton(_ sender: UIButton) {
        let vc: SelectionViewController? = UIStoryboard(name: "SelectionViewController", bundle: nil).instantiateViewController(withIdentifier: "SelectionViewController") as? SelectionViewController
        vc?.modalPresentationStyle = .fullScreen
        present(vc ?? UIViewController(), animated: true)
        
    }
}

