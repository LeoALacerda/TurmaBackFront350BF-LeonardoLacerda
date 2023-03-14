//
//  main.swift
//  Heranca
//
//  Created by Leonardo Lacerda on 11/03/23.
//

import Foundation


// MARK: - Herança

// Classe Pai / Super Class

// CLASSE MAIS GENERICA OU CLASSE QUE CONTENHA ALGO QUE POSSA SER REAPROVEITADO NAS CLASSES FILHAS/SUB CLASS

class Animal{
    
    var idade: Int = 10
    
    func comer(){
        print("O animal está comendo...")
    }
    
}

//Classe Filha / Sub Class
class Cavalo: Animal{
    
}
class Boi: Animal{
    
}
class Ovelha: Animal{
    
}
// A classe filha contem TUDO o que a classe pai CONTEM, TANTO CARACTERISTICAS QUANTO AÇÕES

var meuCavalo: Cavalo = Cavalo()
//meuCavalo.comer()
//meuCavalo.idade


// Classe pai (outro exemplo)
class Pessoa{
    var nome: String
    
    init(nome: String) {
        self.nome = nome
    }
}

//super.init só vai ser usado quando a classe pai tiver um construtor!

class Caio: Pessoa{
    var altura: Double = 78
    
    init(altura: Double,nome: String) {
        self.altura = altura
        super.init(nome: nome)
    }
}

var meuNome: Caio = Caio(altura: 1.89, nome: "Leonardo")

print(meuNome.nome)
print(meuNome.altura)

// DESAFIO PARA PASSAR PARA CASA

// Criar uma classe pai na qual tenha 3 caracteristicas e 2 ações.
// Criar 2 classes filhas distintas, porem ambas vão herdar da classe pai(super). Cada classe filha terá 3 caracteristicas especificas.
// A classe pai terá construtor para setar seus valores.
// Uma das classes filhas não deve conter construtor.
// Uma das classes filhas deve conter contrutor indicando os valores de todas as suas propriedades.

