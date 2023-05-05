//
//  ListTableViewCell.swift
//  DesafioNotificationCenter
//
//  Created by Leonardo Lacerda on 05/05/23.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = String(describing: ListTableViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(person: Person){
        nameLabel.text = person.name
    }
    
}
