//
//  TabBarController.swift
//  DesafioTabBar
//
//  Created by Leonardo Lacerda on 25/04/23.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configItems()
        configTabBar()
    }
    
    func configItems(){
        guard let items = tabBar.items else {return}
        items[0].title = "Teste Caio"
        items[0].image = UIImage(systemName: "pencil.circle.fill")
        
        items[1].title = "Tela 02"
        items[1].image = UIImage(systemName: "rectangle.portrait.and.arrow.right.fill")
        
        items[2].title = "Tela 03"
        items[2].image = UIImage(systemName: "trash.slash.circle.fill")
    }
    
    func configTabBar(){
        tabBar.backgroundColor = UIColor.white
        tabBar.layer.borderColor = UIColor.lightGray.cgColor
        tabBar.layer.borderWidth = 1.5
    }

}
