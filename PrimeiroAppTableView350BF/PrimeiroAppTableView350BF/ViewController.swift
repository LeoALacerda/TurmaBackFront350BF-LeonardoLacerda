//
//  ViewController.swift
//  PrimeiroAppTableView350BF
//
//  Created by Leonardo Lacerda on 06/04/23.
//

import UIKit

// MARK: - Passo a Passo TableView com XIB

// 1o: Criar a tableView e fazer a sua ligação
// 2o: Configurar a TableView (delegate e dataSource)
// 3o: Criar célula customizada

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTabelView()
    }
    
    func configTabelView(){
        // 3o: Configurar os protocolos
        tableView.delegate = self
        tableView.dataSource = self
        // 4o: Registrar a célula
        //tableView.register(<#T##nib: UINib?##UINib?#>, forCellReuseIdentifier: <#T##String#>)
    }
    
}
// DATASOURCE -> Responsável pela parte de DADOS
extension ViewController: UITableViewDataSource{
    
    // Quantidade de itens por SEÇÃO
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    // Quem da a vida a célula
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}

// DELEGATE -> Responsável pela INTERAÇÃO do usuário
extension ViewController: UITableViewDelegate{
    
}
