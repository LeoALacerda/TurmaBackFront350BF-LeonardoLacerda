//
//  PersonTableViewCell.swift
//  TableViewAvancado
//
//  Created by Leonardo Lacerda on 13/04/23.
//

import UIKit

class PersonTableViewCell: UITableViewCell {
    
    @IBOutlet weak var personImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var view: UIView!
    
    
    static let identifier: String = "PersonTableViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(_ person: Person){
        personImageView.image = UIImage(systemName: person.nameImage)
        nameLabel.text = person.name
    }
    
}
