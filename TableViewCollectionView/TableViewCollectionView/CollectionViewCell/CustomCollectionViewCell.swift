//
//  CustomCollectionViewCell.swift
//  TableViewCollectionView
//
//  Created by Leonardo Lacerda on 21/04/23.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var carImageView: UIImageView!
    
    static let identifier: String = String(describing: CustomCollectionViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(nameImage: String){
        carImageView.image = UIImage(named: nameImage)
    }

}
