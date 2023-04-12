//
//  NameTableViewCell.swift
//  PrimeiroAppTableView350BF
//
//  Created by Leonardo Lacerda on 06/04/23.
//

import UIKit

// MARK: - Observação: O IDENTIFIER deve ter o MESMO NOME DO FILE (nome da classe, do arquivo swift, do arquivo storyboard, nome do identificador tudo igual!)
// MARK: - Criar setup

class NameTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var surnameLabel: UILabel!
    
    static func test(){
        print(identifier)
    }
    
    //static: Significa algo que nao tem nenhuma dependencia externa!
    static let identifier: String = "NameTableViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    // Ciclo de vida de uma célula, igual ao viewDidLoad
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setupCell(person: Person) {
        nameLabel.text = person.name
        surnameLabel.text = person.surname
    }
    
}
