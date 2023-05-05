//
//  ListViewModel.swift
//  DesafioNotificationCenter
//
//  Created by Leonardo Lacerda on 05/05/23.
//

import Foundation

class ViewModel{
    
    private var list: [Person] = []
    
    func getPerson(index: Int)-> Person{
        return list[index]
    }
    
    func addPerson(person: Person){
        list.append(person)
    }
    
    func listSize() -> Int{
        return list.count
    }
    
    func removePerson(index: Int){
        list.remove(at: index)
    }
}
