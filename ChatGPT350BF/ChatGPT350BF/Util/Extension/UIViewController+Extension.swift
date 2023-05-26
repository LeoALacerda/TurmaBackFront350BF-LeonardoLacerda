//
//  UIViewController+Extension.swift
//  ChatGPT350BF
//
//  Created by Leonardo Lacerda on 25/05/23.
//

import Foundation
import UIKit

extension HomeViewController{
    public func addLogoToNavigationBarItem(image: UIImage) {
        let imageView = UIImageView ()
        imageView.translatesAutoresizingMaskIntoConstraints=false
        imageView.heightAnchor.constraint(equalToConstant:110).isActive=true
        imageView.contentMode = .scaleAspectFit
        imageView.image = image
        let contentView = UIView()
        self.navigationItem.titleView = contentView
        self.navigationItem.titleView?.addSubview(imageView)
        imageView.centerXAnchor.constraint(equalTo:contentView.centerXAnchor).isActive=true
        imageView.centerYAnchor.constraint(equalTo:contentView.centerYAnchor).isActive=true
    }
    
}
