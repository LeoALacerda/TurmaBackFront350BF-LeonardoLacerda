//
//  TableViewCell.swift
//  ExercicioTableView
//
//  Created by Leonardo Lacerda on 11/04/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var personImage: UIImageView!
    
    @IBOutlet weak var view: UIView!
    
    static let identifier: String = "TableViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(person: Person){
        nameLabel.text = person.name
        personImage.image = UIImage(named: person.imageName)
    }
    
}
