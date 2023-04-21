//
//  ViewController.swift
//  TableViewCollectionView
//
//  Created by Leonardo Lacerda on 21/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var listVehicle: [Vehicle] = [Vehicle(name: "Carros", list: ["car1", "car2", "car3", "car4", "car5", "car6"]),Vehicle(name: "Motos", list: ["moto1", "moto2"]), Vehicle(name: "Aviões", list: ["plane1", "plane2", "plane3"]), Vehicle(name: "Barcos", list: ["boat1"])]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    private func configureTableView(){
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(CarTableViewCell.nib(), forCellReuseIdentifier: CarTableViewCell.identifier)
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listVehicle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CarTableViewCell.identifier, for: indexPath) as? CarTableViewCell
        cell?.setupCell(vehicle: listVehicle[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        346
    }
}
