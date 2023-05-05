//
//  SelectionViewController.swift
//  NotificationCenterEProtocol
//
//  Created by Leonardo Lacerda on 04/05/23.
//

import UIKit

class SelectionViewController: UIViewController {
    
    @IBOutlet weak var optionsLabel: UILabel!
    @IBOutlet weak var macbookButton: UIButton!
    @IBOutlet weak var iMacButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pressedMacbookButton(_ sender: UIButton) {
        NotificationCenter.default.post(name: .macbook, object: UIColor.purple)
        dismiss(animated: true)
    }
    
    @IBAction func pressediMacButton(_ sender: UIButton) {
        NotificationCenter.default.post(name: .imac, object: UIColor.cyan)
        dismiss(animated: true)
    }
}
