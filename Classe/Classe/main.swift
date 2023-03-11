//
//  main.swift
//  Classe
//
//  Created by Leonardo Lacerda on 11/03/23.
//

import Foundation

// OBJETO
// CARACTERISTICAS DE UM OBJETO -> ATRIBUTOS OU PROPRIEDADES
// AÇÕES = FUNÇÃO / METODO

// Para criar uma classe sempre começamos com a palavra reservada "class" e em seguida colocamos o seu nome que sempre deve começar com a primeira letra maiuscula

// MARK: Classe pré definida

class Automovel{
    var cor: String = "Preto"
    var numeroDePortas: Int = 2
    var marca: String = "Honda"
    var eEletrico: Bool = false
    var quantidadeDePassageiros: Int = 5
    
    func ligarFarol(){
        print("O farol está ligado!")
    }
    
    func ligarCarro(){
        print("O carro está ligado!")
    }
    
}
// objeto: meuCarro // tipo: Automovel
// A partir do momento que coloca (), eu estou dando vida a meu objeto
//Dando vida ao objeto -> quando geramos a instancia -> () ... caio escrevendo

//Instanciando o objeto:
var meuCarro: Automovel = Automovel()

// EXERCICIOS DE CLASSES COM VALORES PRE DEFINIDOS
class Parques{
    var nome: String = "WaterPark"
    var estaAberto: Bool = false
    var quantidadeBrinquedos: Int = 20
    var alturaMinimaBrinquedos: Double = 1.20
    var brinquedosQuebrados: Int = 3
    
    func abrirParque(){
        if estaAberto == false{
            print("Abrindo parque...")
            estaAberto = true
        }else{
            print("O parque ja esta aberto!")
        }
    }
    func fecharParque(){
        if estaAberto == true{
            print("Fechando parque...")
            estaAberto = false
        }else{
            print("O parque ja esta fechado!")
        }
    }
    func chamarManutenção(){
        if brinquedosQuebrados != 0{
            print("Chamando manutenção")
            brinquedosQuebrados = 0
        }else{
            print("Nenhum brinquedo quebrado")
        }
    }
}

class Computador{
    var tamanhoTela: Double = 24.3
    var tecladoNumerico: Bool = false
    var modelo: String = "MacBook Pro 13"
    var entradasUSBC: Int = 2
    var estaLigado: Bool = false
    
    func ligar(){
        if estaLigado == false{
            print("Ligando computador...")
            estaLigado = true
        }else{
            print("O computador ja está ligado!")
        }
    }
    func desligar(){
        if estaLigado == true{
            print("Desligando computador...")
            estaLigado = false
        }else{
            print("O computador ja está desligado!")
        }
    }
}

class Mala{
    var temRodas: Bool = true
    var revestimento: String = "Plastico"
    var quantidadeAlcas: Int = 2
    var pesoSuportado: Double = 39.7
    var estaFechada: Bool = true
    
    func abrirMala(){
        if estaFechada == true{
            print("Abrindo mala...")
            estaFechada = false
        }else{
            print("A mala ja está aberta!")
        }
    }
    func fecharMala(){
        if estaFechada == false{
            print("Fechando Mala...")
            estaFechada = true
        }else{
            print("A mala ja está fechada!")
        }
    }

}

// MARK: Classe Dinamica
// Construtores
//Criamos um construtor com a palavra init e com isso indicamos TODOS OS VALORES DAS VARIAVEIS OU CONSTANTES QUE NÃO SE INICIAM COM VALOR

class Pessoa{
    
    var nome: String
    var altura: Double
    var peso: Double
    var tamanhoCalcado: Int
    
    init(nome: String, altura: Double, peso: Double, tamanhoCalcado: Int) {
        self.nome = nome
        self.altura = altura
        self.peso = peso
        self.tamanhoCalcado = tamanhoCalcado
    }
    
}
var caio: Pessoa = Pessoa(nome: "Caio", altura: 1.84, peso: 84, tamanhoCalcado: 44)
var matheus: Pessoa = Pessoa(nome: "Matheus", altura: 1.65, peso: 69, tamanhoCalcado: 40)

//print(caio.nome)
//print(caio.altura)
//print(caio.peso)


// Referencia uma das principais caracteristicas de uma classe

print(caio.nome)
print(matheus.nome)

caio.nome = "Caio Fabrini"
matheus.nome = "Matheus Souza"

print(caio.nome)
print(matheus.nome)

// caio é igual a matheus
caio = matheus
// Agora caio e matheus são um só: Se vc altera um, altera o outro tbm. Agora ambos tem uma unica referencia na memória

print(caio.nome)
print(matheus.nome)

caio.nome = "Alberto"

print(caio.nome)
print(matheus.nome)

matheus.nome = "Jorge"

print(caio.nome)
print(matheus.nome)
