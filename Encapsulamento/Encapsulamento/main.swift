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
    private var modelo: String

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


class Seller{
    
    private var name: String
    private var age: Int
    private var id: String
    private var bankBalance: Double
    
    init(name: String, age: Int, id: String, bankBalance: Double) {
        self.name = name
        self.age = age
        self.id = id
        self.bankBalance = bankBalance
    }
    
    public func sell(amount: Int, type: String){
        if(type == "Suit"){
            suitsSold(amountSuits: amount)
        }else if(type == "Dress"){
            dressesSold(amountDresses: amount)
        }else if(type == "Cap"){
            capsSold(amountCap: amount)
        }else{
            print("We don't sell this product...")
        }
    }
    private func suitsSold(amountSuits: Int) {
        if amountSuits >= 3{
            bankBalance = bankBalance + Double(amountSuits) * 350.0
        }else{
            bankBalance = bankBalance + Double(amountSuits) * 400.0
        }
    }
    private func dressesSold(amountDresses: Int){
        bankBalance = bankBalance + Double(amountDresses) * 900.0
        if amountDresses == 5{
            print("Congratulations! You won a wedding veil!")
        }
        
    }
        
    private func capsSold(amountCap: Int){
        if(amountCap/3 >= 1){
            bankBalance = bankBalance + Double(amountCap - (amountCap/3)) * 50.0
        }else{
            bankBalance = bankBalance + Double(amountCap) * 50.0
        }
    }
    public func getBankBalance() -> Double{
        return bankBalance
    }
}
var mario: Seller = Seller(name: "Mario", age: 21, id: "441.222.343-66", bankBalance: 1000)
mario.sell(amount: 5, type: "Suit")
print(mario.getBankBalance())
mario.sell(amount: 2, type: "Suit")
print(mario.getBankBalance())
mario.sell(amount: 5, type: "Dress")
print(mario.getBankBalance())
mario.sell(amount: 9, type: "Cap")
print(mario.getBankBalance())
