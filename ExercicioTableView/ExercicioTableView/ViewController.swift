//
//  ViewController.swift
//  ExercicioTableView
//
//  Created by Leonardo Lacerda on 11/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var personList: [Person] = [Person(name: "Twitter", imageName: "twitter"),
                                Person(name: "Instagram", imageName: "instagram"),
                                Person(name: "Whatsapp", imageName: "whatsapp"),
                                Person(name: "Facebook", imageName: "facebook")]

    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    func configTableView(){
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.identifier)
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell
        cell?.setupCell(person: personList[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        102
    }
}
