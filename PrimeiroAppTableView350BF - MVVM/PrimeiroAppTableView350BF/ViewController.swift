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
// 3o: Configurar os protocolos
// 4o: Criar célula customizada
// 5o: Registrar célula
// 6o: Configurar os métodos da TableView

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
//    var nameList: [String] = ["Barbara", "Bernardo","Bruno", "Douglas", "Leo"]
//    var surnameList: [String] = ["1", "2","3", "4", "Lacerda"]
    
    var viewModel: ViewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTabelView()
    }
    
    func configTabelView(){
        // 3o: Configurar os protocolos
        tableView.delegate = self
        tableView.dataSource = self
        // 5o: Registrar a célula
        tableView.register(NameTableViewCell.nib(), forCellReuseIdentifier: NameTableViewCell.identifier)
    }

    
}
// DATASOURCE -> Responsável pela parte de DADOS
extension ViewController: UITableViewDataSource{
    
    // 6o: Configurar os métodos da TableView
    
    // Quantidade de itens por SEÇÃO
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    // Responsável por criar as células, dar vida a elas
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier, for: indexPath) as? NameTableViewCell
        cell?.setupCell(person: viewModel.loadCurrentPerson(indexPath: indexPath))
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 83
    }
    
}

// DELEGATE -> Responsável pela INTERAÇÃO do usuário
extension ViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(viewModel.getName(indexPath: indexPath))
    }
    
}


// static serve para vc nao precisar instanciar uma variavel/funcao!
// ele serve para vc economizar memoria

//class Pessoa{
//    static var caio: String = "Caio"
//}
//
//var caio1 = Pessoa.caio
//var caio2 = Pessoa.caio

// Não precisa instanciar Pessoa para acessar a variável caio.
// ou seja, não precisa dos parenteses: var caio1 = Pessoa().caio


//
// o _ serve para o valor1 ficar implicito
// test (String)
// func test (_ valor1: String){}
