//
//  ViewController.swift
//  TableViewAvancado
//
//  Created by Leonardo Lacerda on 13/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var employeeList: [Employee] = [
        Employee(userImage: "person.circle", name: "Leo", age: 21, job: "Desenvolvedor iOS", salary: "R$ 100.000,00", isEnableHeart: true),
        Employee(userImage: "person.circle", name: "Barbara", age: 21, job: "Desenvolvedor iOS", salary: "R$ 15.000,00", isEnableHeart: true),
        Employee(userImage: "person.circle", name: "Bruno", age: 21, job: "Desenvolvedor iOS", salary: "R$ 10.000,00", isEnableHeart: true),
        Employee(userImage: "person.circle", name: "Bernardo", age: 21, job: "Desenvolvedor iOS", salary: "R$ 20.000,00", isEnableHeart: true)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    func configTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(PersonTableViewCell.nib(), forCellReuseIdentifier: PersonTableViewCell.identifier)
        tableView.register(EmployeeTableViewCell.nib(), forCellReuseIdentifier: EmployeeTableViewCell.identifier)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1 + employeeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: PersonTableViewCell.identifier, for: indexPath) as? PersonTableViewCell
            cell?.setupCell(Person(nameImage: "trash", name: "Caio Fabrini"))
            return cell ?? UITableViewCell()
            }else{
                let cell = tableView.dequeueReusableCell(withIdentifier: EmployeeTableViewCell.identifier, for: indexPath) as? EmployeeTableViewCell
                cell?.setupCell(employee: employeeList[(indexPath.row - 1)])
                return cell ?? UITableViewCell()
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 103
        }else{
            return 147
        }
    }
}
