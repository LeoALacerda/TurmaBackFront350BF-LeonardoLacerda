//
//  UiViewController+Extension.swift
//  ExercicioTextFieldDelegate2
//
//  Created by Leonardo Lacerda on 23/03/23.
//

import Foundation

import UIKit
extension UIViewController{
    
    public func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector (UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
        @objc private func dismissKeyboard() {
            view.endEditing(true)
        }
    }
