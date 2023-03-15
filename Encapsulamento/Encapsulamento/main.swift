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

// EXERCICIO VENDEDOR

//Um vendedor de loja e possui nome, idade e cpf, saldo em conta vende em sua loja ternos, vestidos e bonés, definir um método vender(quantidade DePecas: Int, tipoDePeca: String).
//-Cada terno custa 400 reais, caso o cliente compre 3 ou mais ternos, ele recebe 50 de desconto para cada terno.
//-Cada vestido custa 900 reais, caso o cliente compre 5 vestidos ele ganha um véu de noiva de brinde.
//-Cada boné custa 50 reais, e para cada 2 bonés vendidos, o terceiro é grátis, logo não haverá lucro.


class Vendedor{
    
     private var nome: String = "Mario"
     private var idade: Int = 21
     private var cpf: Int = 44184923000
    private var saldo: Double = 1000.0
    
    public func vender(quantidadeDePecas: Int, tipoDePeca: String){
        if(tipoDePeca == "Terno"){
            vendasTerno(quantidadeDePecas2: quantidadeDePecas)
        }else if(tipoDePeca == "Vestido"){
            vendasVestido(quantidadeDePecas1: quantidadeDePecas)
        }else if(tipoDePeca == "Boné"){
            vendasBone(quantidadeDePecas3: quantidadeDePecas)
        }else{
            print("Algo deu errado...")
        }
    }
    private func vendasVestido(quantidadeDePecas1: Int){
        if quantidadeDePecas1 >= 5{
            print("Ganhou um véu de noiva!")
            saldo = saldo + Double(quantidadeDePecas1) * 900.0
        }else if quantidadeDePecas1 >= 1{
            saldo = saldo + Double(quantidadeDePecas1) * 900.0
        }else{
            print("Algo deu errado...")
        }
    }
    private func vendasTerno(quantidadeDePecas2: Int) {
        if quantidadeDePecas2 >= 3{
            saldo = saldo + Double(quantidadeDePecas2) * 350.0
        }else if quantidadeDePecas2 >= 1{
            saldo = saldo + Double(quantidadeDePecas2) * 400.0
        }else {
            print("Algo deu errado...")
        }
    }
    private func vendasBone(quantidadeDePecas3: Int){
        if(quantidadeDePecas3/3 >= 1){
            saldo = saldo + Double(quantidadeDePecas3 - (quantidadeDePecas3/3)) * 50.0
        }else if (quantidadeDePecas3 >= 1){
            saldo = saldo + Double(quantidadeDePecas3) * 50.0
        }else{
            print("Algo deu errado...")
        }
    }
    public func getSaldo() -> Double{
        return saldo
        
    }
}

var mario: Vendedor = Vendedor()

mario.vender(quantidadeDePecas: 5, tipoDePeca: "Terno")
print(mario.getSaldo())
mario.vender(quantidadeDePecas: 2, tipoDePeca: "Terno")
print(mario.getSaldo())
mario.vender(quantidadeDePecas: 5, tipoDePeca: "Vestido")
print(mario.getSaldo())
mario.vender(quantidadeDePecas: 9, tipoDePeca: "Boné")
print(mario.getSaldo())
