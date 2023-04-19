//
//  MVC.swift
//  MVVM-Anderson
//
//  Created by Leonardo Lacerda on 18/04/23.
//

import UIKit

class MVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var sfSymbols: [SFSymbol] = [
        
        SFSymbol(name: "gear"),
        SFSymbol(name: "person"),
        SFSymbol(name: "house"),
        SFSymbol(name: "pencil"),
        SFSymbol(name: "trash"),
        SFSymbol(name: "eraser"),
        SFSymbol(name: "bell"),
        SFSymbol(name: "folder"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    private func configureTableView(){
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.identifier)
    }
    
}
extension MVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        sfSymbols.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell{
            cell.configureCell(sfSymbol: sfSymbols[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        113
    }
    
}
