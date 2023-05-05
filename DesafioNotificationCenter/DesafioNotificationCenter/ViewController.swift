//
//  ViewController.swift
//  DesafioNotificationCenter
//
//  Created by Leonardo Lacerda on 05/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var listTableView: UITableView!
    
    var viewModel: ViewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        configureObserver()
    }
    
    private func configureTableView(){
        listTableView.dataSource = self
        listTableView.delegate = self
        listTableView.register(ListTableViewCell.nib(), forCellReuseIdentifier: ListTableViewCell.identifier)
        listTableView.allowsSelection = false
    }
    
    func configureObserver(){
        NotificationCenter.default.addObserver(self, selector: #selector(updateList), name: NSNotification.Name("Lista"), object: nil)
    }
    
    @objc func updateList(_notification: NSNotification){
        viewModel.addPerson(person: Person(name: _notification.object as? String ?? ""))
        listTableView.reloadData()
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.listSize()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ListTableViewCell.identifier, for: indexPath) as? ListTableViewCell
        cell?.setupCell(person: viewModel.getPerson(index: indexPath.row))
        return cell ?? ListTableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        32
    }
}
