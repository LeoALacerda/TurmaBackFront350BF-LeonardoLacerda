//
//  ViewModel.swift
//  PrimeiroAppTableView350BF
//
//  Created by Leonardo Lacerda on 11/05/23.
//

import UIKit

class ViewModel: NSObject {
    
    private var personList: [Person] = [Person(name: "Barbara", surname: "Helen"),
                                Person(name: "Bernardo", surname: "Guimarães"),
                                Person(name: "Bruno", surname: "Moura"),
                                Person(name: "Douglas", surname: "Stadulni"),
                                Person(name: "Leo", surname: "Lacerda")
    ]
    
    //Pode usar tanto a funçao de retorno quanto variavel computada para acessar a quantidade de elementos da lista privada.
    
    //função de retorno -> a funçao tem como vc passar parametro
//    func numberOfRowsInSection() -> Int {
//        return personList.count
//    }
    
    //Variável computada -> Só pra pegar um valor
    var numberOfRowsInSection: Int{
        return personList.count
    }
    
    func loadCurrentPerson(indexPath: IndexPath) -> Person{
        return personList[indexPath.row]
    }
    
    func getName(indexPath: IndexPath) -> String{
        return personList[indexPath.row].name
    }
    
}
