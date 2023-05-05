//
//  AddListViewController.swift
//  DesafioNotificationCenter
//
//  Created by Leonardo Lacerda on 05/05/23.
//

import UIKit

class AddListViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTextField()
    }
    
    func configTextField(){
        nameTextField.delegate = self
        nameTextField.autocapitalizationType = .words
    }

    @IBAction func pressedAddButton(_ sender: UIButton) {
        if nameTextField.hasText{
            NotificationCenter.default.post(name: NSNotification.Name("Lista"), object: nameTextField.text)
            nameTextField.text = ""
            let alertController = UIAlertController(title: "Nome adicionado a lista", message: nil, preferredStyle: .alert)
            
            let okButton = UIAlertAction(title: "OK", style: .default) { action in}
            alertController.addAction(okButton)
            present(alertController, animated: true)
        }
    }
}

extension AddListViewController: UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
