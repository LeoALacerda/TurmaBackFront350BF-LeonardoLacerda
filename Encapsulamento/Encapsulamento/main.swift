//
//  main.swift
//  Encapsulamento
//
//  Created by Leonardo Lacerda on 14/03/23.
//

import Foundation

//MARK: Encapsulamento

// Private -> privado, que não tenha acesso externo
// Publico -> público, que tenha acesso externo

class Carro{
    private var  modelo: String

    init(modelo: String) {
        self.modelo = modelo
    }
    
    public func getModelo() -> String{
        return modelo
    }
    
    public func setModelo(modelo: String) {
        self.modelo = modelo
    }
    
}

var meuCarro: Carro = Carro(modelo: "BMW 320")

print(meuCarro.getModelo())
meuCarro.setModelo(modelo: "La Ferrari")
print(meuCarro.getModelo())

//meuCarro.modelo = "Fusca"

//print(meuCarro.modelo)

