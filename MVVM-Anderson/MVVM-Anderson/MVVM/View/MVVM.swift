//
//  MVVM.swift
//  MVVM-Anderson
//
//  Created by Leonardo Lacerda on 18/04/23.
//

import UIKit

class MVVM: UIViewController {
    
    @IBOutlet weak var sfSymbolTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    private var viewModel: MVVMViewModel = MVVMViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        configureTextField()
    }
    
    private func configureTableView(){
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.identifier)
    }
    
    private func configureTextField(){
        sfSymbolTextField.delegate = self
    }

    @IBAction func addButtonPressed(_ sender: UIButton) {
        if let sfSymbolName = sfSymbolTextField.text{
            viewModel.setNewSFSymbol(name: sfSymbolName)
        }
        tableView.reloadData()
    }
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        viewModel.clearSFSymbols()
        tableView.reloadData()
    }
    
}

extension MVVM: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell{
            cell.configureCell(sfSymbol: viewModel.getSFSymbol(index: indexPath.row))
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        viewModel.heighForRowAt
    }
}

extension MVVM: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
