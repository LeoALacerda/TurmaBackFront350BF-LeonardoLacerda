//
//  String+Extension.swift
//  ChatGPT350BF
//
//  Created by Leonardo Lacerda on 30/05/23.
//

import Foundation
import UIKit

extension String{
    func size(OfFont font: UIFont) -> CGSize{
        return (self as NSString).size(withAttributes: [NSAttributedString.Key.font : font])
    }
    func heightwithConstrainedwidth(width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize (width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: [.usesLineFragmentOrigin,
                                                                            .usesFontLeading], attributes: [NSAttributedString.Key.font: font], context: nil)
        return boundingBox.height
    }
}
