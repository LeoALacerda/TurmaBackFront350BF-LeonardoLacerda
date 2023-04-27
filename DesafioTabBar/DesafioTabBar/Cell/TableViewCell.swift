//
//  TableViewCell.swift
//  DesafioTabBar
//
//  Created by Leonardo Lacerda on 26/04/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileLabel: UILabel!
    
    static let identifier: String = String(describing: TableViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(profile: Profile){
        profileImageView.image = profile.imageName
        profileLabel.text = profile.name
        
        profileImageView.layer.cornerRadius = 45
    }
    
    
}
