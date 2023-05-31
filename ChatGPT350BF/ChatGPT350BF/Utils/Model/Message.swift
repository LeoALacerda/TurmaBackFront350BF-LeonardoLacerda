//
//  Message.swift
//  ChatGPT350BF
//
//  Created by Leonardo Lacerda on 30/05/23.
//

import Foundation

//enum: pode criar varios tipos de objeto. 2 definicoes de enum: ou pra criar tipos ou para atribuir valores
//enum Nomes: String {
//    case caio = "Caio"
//    case felipe = "Felipe"
//    case lucas = "Lucas"
//}
//
//func getNome(nome: Nomes){
//    print(nome.rawValue)
//
//}
//
//getNome(nome: .caio)




enum TypeMessage{
    case user
    case chatGPT
}

struct Message{
    var message: String
    var typeMessage: TypeMessage
}
