//
//  main.swift
//  Polimorfismo
//
//  Created by Leonardo Lacerda on 14/03/23.
//

import Foundation

class Centauro{
    func totalDeDesconto(valorTotal: Double)-> Double{
        return valorTotal*0.3
    }
}

class Loja1: Centauro{
    override func totalDeDesconto(valorTotal: Double) -> Double {
        return valorTotal * 0.1
    }
}

class Loja2: Centauro{
    
}

var lojaDoCaio: Loja1 = Loja1()
print(lojaDoCaio.totalDeDesconto(valorTotal: 1000))

var lojaDoBruno: Loja2 = Loja2()
print(lojaDoBruno.totalDeDesconto(valorTotal: 1000))
