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

// MARK: EXERCICIO FUNCIONARIO POLIMORFISMO
//Definir uma classe Funcionário com nome, salário e cpf, depois defina as classes Programador que tem plataforma de trabalho(ex: Android, Web, iOS), e uma classe Designer que tem ferramenta preferida(ex: Photoshop, Sketch, Gimp). Ambos tem um bônus anual baseado no salário, Programador recebe 20% e Designer recebe 15%. Faça um método que calcule o bônus anual e mostre o valor do bônus na tela. Use polimorfismo para resolver este problema.

class Employee{
    var name: String
    var salary: Double
    var id: Int
    
    init(name: String, salary: Double, id: Int) {
        self.name = name
        self.salary = salary
        self.id = id
    }
    func bonus(){
        print("No bonus for you...")
    }
}

class Developer: Employee{
    var os: String
    
    init(os: String, name: String, salary: Double, id: Int) {
        self.os = os
        super.init(name: name, salary: salary, id: id)
    }
    
    override func bonus(){
        print("Bonus: $\(0.2 * salary)")
    }
}

class Designer: Employee{
    var tool: String
    
    init(tool: String, name: String, salary: Double, id: Int) {
        self.tool = tool
        super.init(name: name, salary: salary, id: id)
    }
    
    override func bonus() {
        print("Bonus: $\(0.15 * salary)")
    }
}

var me: Developer = Developer(os: "iOS", name: "Leo", salary: 1000, id: 44268344441)
me.bonus()
var me2: Designer = Designer(tool: "Photoshop", name: "Leo2", salary: 1000, id: 231321312323)
me2.bonus()
var me3: Employee = Employee(name: "Leo3", salary: 1000, id: 23232132424)
me3.bonus()


//MARK: EXERCICIO VEICULOS POLIMORFISMO
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
