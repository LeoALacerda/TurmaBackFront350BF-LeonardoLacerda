//
//  CollectionViewCell.swift
//  ExercicioLeoTableViewCollectionView
//
//  Created by Leonardo Lacerda on 21/04/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var appImageView: UIImageView!
    @IBOutlet weak var appLabel: UILabel!
    
    static let identifier: String = String(describing: CollectionViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        appImageView.layer.cornerRadius = 20
    }
    
    func setupCollectionViewCell(application: Application){
        appImageView.image = UIImage(named: application.appImage)
        appLabel.text = application.appTitle
    }

}
