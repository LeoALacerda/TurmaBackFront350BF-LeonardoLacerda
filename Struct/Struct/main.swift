//
//  main.swift
//  Struct
//
//  Created by Leonardo Lacerda on 14/03/23.
//

import Foundation

//MARK: Struct

// Uma Struct é muito similar a uma classe, porem uma struct trabalha com VALIUE TYPE. Ja a Class com REFERENCE TYPE.
//Uma Struct não trabalha com herança, apenas pode estar em conformidade com protocols
//Na struct não necessita de criar o construtor na mão, ele cria automáticamente

struct Pessoa{
    var nome: String
    var idade: Int
    
}

var caio = Pessoa(nome: "Caio", idade: 21)
var matheus = Pessoa(nome: "Matheus", idade: 30)

caio = matheus

caio.nome = "Alfredo"

print(caio.nome)
print(matheus.nome)
