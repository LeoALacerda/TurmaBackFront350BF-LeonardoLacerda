//
//  TableViewCell.swift
//  MVVM-Anderson
//
//  Created by Leonardo Lacerda on 18/04/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var sfSymbolNameLabel: UILabel!
    
    @IBOutlet weak var sfSymbolImage: UIImageView!
    
    static let identifier: String = String(describing: TableViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(sfSymbol: SFSymbol) {
        sfSymbolNameLabel.text = sfSymbol.name
        sfSymbolImage.image = UIImage(systemName: sfSymbol.name)
    }
    
}
