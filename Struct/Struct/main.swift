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

//MARK: EXERCICIO STRUCT VEICULOS
//Definir uma classe Veículo com cor, preço e quantidade de passageiros, depois defina as classes Carro que tem tamanho das rodas, e Avião que tem piloto e companhia aérea. queremos descobrir a quantidade de combustível que cada um dos veículos gasta por viagem, defina um método que recebe como parâmetro a distancia em Km e calcule a quantidade de combustível. Carro: tamanho das rodas * quantidade de passageiros * distancia
//Avião quantidade de passageiros * distancia

class Vehicle{
    var color: String
    var price: Double
    var passengers: Int
    
    init(color: String, price: Double, passengers: Int) {
        self.color = color
        self.price = price
        self.passengers = passengers
    }
    
    func fuelCalculator(distanceKM: Double){
        print("Something went wrong!")
    }
}

class Car: Vehicle{
    var tireSize: Double
    
    init(tireSize: Double, color: String, price: Double, passengers: Int) {
        self.tireSize = tireSize
        super.init(color: color, price: price, passengers: passengers)
    }
    
    override func fuelCalculator(distanceKM: Double){
        print ("Consumed Fuel: \(tireSize * Double(passengers) * distanceKM)L")
    }
}

class Airplane: Vehicle{
    var pilot: String
    var airCompany: String
    
    init(pilot: String, airCompany: String, color: String, price: Double, passengers: Int) {
        self.pilot = pilot
        self.airCompany = airCompany
        super.init(color: color, price: price, passengers: passengers)
    }
    
    override func fuelCalculator(distanceKM: Double){
        print ("Consumed Fuel: \(Double(passengers) * distanceKM)L")
    }
}

var myCar: Car = Car(tireSize: 17, color: "Black", price: 120000, passengers: 5)
myCar.fuelCalculator(distanceKM: 100)
var myVehicle: Vehicle = Vehicle(color: "Red", price: 200000, passengers: 3)
myVehicle.fuelCalculator(distanceKM: 100)
var myAirplane: Airplane = Airplane(pilot: "Me", airCompany: "Delta", color: "White", price: 13000000, passengers: 500)
myAirplane.fuelCalculator(distanceKM: 700)
