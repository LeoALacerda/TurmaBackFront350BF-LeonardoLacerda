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

class Tecnologia{
    var wifi: Bool
    var tela: Bool
    var teclado: String
    
    init(wifi: Bool, tela: Bool, teclado: String) {
        self.wifi = wifi
        self.tela = tela
        self.teclado = teclado
    }
    
    func trocarTecladoBR(){
        teclado = "BR"
    }
    func trocarTela(){
        print("Trocou tela")
    }
}

class Celular: Tecnologia{
    var marca: String = "Apple"
    var ano: Int = 2021
    var modelo: String = "Iphone 13"
}

class Notebook: Tecnologia {
    var marca: String
    var ano: Int
    var modelo: String
    
    init(marca: String, ano: Int, modelo: String, wifi: Bool, tela: Bool, teclado: String) {
        self.marca = marca
        self.ano = ano
        self.modelo = modelo
        super.init(wifi: wifi, tela: tela, teclado: teclado)
    }

}

var meuCelular: Celular = Celular(wifi: false, tela: true, teclado: "BR")

var meuNotebook: Notebook = Notebook(marca: "Apple", ano: 2017, modelo: "MacBook Pro", wifi: true, tela: true, teclado: "US")


// MARK: Desafios de Construtores:

//Nota: Vocês tem total liberdade de escolher o tipo das variáveis. Sugiro que usem tipos diversos.

//Crie uma classe chamada "Livro" que tenha as propriedades "titulo", "autor" e "preço". Em seguida, crie uma subclasse chamada "LivroDigital" que herde da classe "Livro" e tenha uma propriedade adicional chamada "formato". Crie dois construtores para a classe "LivroDigital". O primeiro deve aceitar o "formato" como parâmetro enquanto o segundo não deve aceitá-lo. Quando o "formato" não for fornecido, defina-o como "PDF". Defina então um método chamado "analisarPreco" que receba o "titulo" e o "preço" do livro como parâmetros e imprima "Livro caro" se o preço for maior que 25 ou "Livro barato", caso contrário.
//

class Livro{
    var titulo: String
    var autor: String
    var preco: Double

    init(titulo: String, autor: String, preco: Double) {
        self.titulo = titulo
        self.autor = autor
        self.preco = preco
    }
    func analisarPreco(){
        if(preco > 25){
            print("Livro caro!")
        }else{
            print("Livro Barato")
        }
    }
}

class LivroDigital: Livro{
    
    var formato: String = "PDF"
    
    init(formato: String, titulo: String, autor: String, preco: Double) {
        self.formato = formato
        super.init(titulo: titulo, autor: autor, preco: preco)
    }
    override init(titulo: String, autor: String, preco: Double) {
        super.init(titulo: titulo, autor: autor, preco: preco)
    }

}

var liv: LivroDigital = LivroDigital(formato: "EPUB", titulo: "HP", autor: "JK", preco: 20)
liv.analisarPreco()
print(liv.formato)

//Crie uma classe chamada "FormaGeometrica" com as propriedades "largura" e "altura". Em seguida, crie uma subclasse chamada "Retangulo" que tenha um método "calcularArea" que calcula a área do retângulo (largura * altura). Certifique-se de que o construtor da subclasse chame o construtor da classe pai para definir a largura e a altura e imprima o resultado.
//

class FormaGeometrica{
    var largura: Double
    var altura: Double
    
    init(largura: Double, altura: Double) {
        self.largura = largura
        self.altura = altura
    }
}

class Retangulo: FormaGeometrica{
    
    func calcularArea(){
        let area: Double = altura*largura
        print("Area: \(area)")
    }
}

var retangulo: Retangulo = Retangulo(largura: 50, altura: 4)
retangulo.calcularArea()

//Crie uma classe chamada "ContaBancaria" com as propriedades "saldo" e "tipo". Em seguida, crie uma subclasse chamada "ContaCorrente" que tenha uma propriedade adicional chamada "limite" e um método "atualizarSaldo" que adiciona o limite ao saldo da conta. Certifique-se de que o construtor da subclasse chame o construtor da classe pai para definir o "saldo" e o "tipo". Você pode ainda criar um método "imprimirSaldo" que imprime o saldo atualizado da conta.
//[00:18, 10/03/2023] +55 12 99206-4867: Desafios de Lógica:

class ContaBancaria{
    var saldo: Double
    var tipo: String
    
    init(saldo: Double, tipo: String) {
        self.saldo = saldo
        self.tipo = tipo
    }
}

class ContaCorrente: ContaBancaria{
    var limite: Double
    init(limite: Double, saldo: Double, tipo: String) {
        self.limite = limite
        super.init(saldo: saldo, tipo: tipo)
    }
    func atualizarSaldo(){
        saldo = saldo + limite
        
    }
    func imprimirSaldo(){
        print("Saldo: \(saldo)")
    }

}

var contaCorrente1: ContaCorrente = ContaCorrente(limite: 70, saldo: 100, tipo: "Corrente")
contaCorrente1.atualizarSaldo()
contaCorrente1.imprimirSaldo()

//Escreva uma função chamada "somaArray" que receba um array de números inteiros como parâmetro e retorne a soma de todos os elementos do array.
//Exemplo de entrada: [1, 2, 3, 4, 5]
//Saída esperada: 15

var a1 = [10,2,3,4,5]

func somaArray(array: [Int])-> Int{
    var soma=0
    if array != []{
        for value in 0...(array.count-1){
            soma = soma + array[value]
        }
        return soma
    }else{
        return 0
    }
}

print(somaArray(array: a1))

//Escreva uma função chamada "elefantesIncomodam" que receba um número inteiro positivo n como parâmetro e retorne a letra correspondente da música "Um Elefante Incomoda Muita Gente" até o n-ésimo elefante.
//Exemplo de entrada: 5
//Saída esperada:
//1 elefante incomoda muita gente
//2 elefantes incomodam, incomodam muito mais
//3 elefantes incomodam muita gente
//4 elefantes incomodam, incomodam, incomodam, incomodam muito mais
//5 elefantes incomodam muita gente

func elefantesIncomodam (n: Int){
    if n>0 {
        print("1 elefante incomoda muita gente")
        if n>1 {
            for value in 2...n {
                if value%2 == 0 {
                    print("\(value) elefantes incomodam", terminator: "")
                    for numb in 2...value{
                        print(", incomodam", terminator: "")
                    }
                    print(" muito mais")
                }else{
                    print("\(value) elefantes incomodam muita gente")
                }
            }
        }
    }else{
            print("Numero invalido para elefantes")
    }
}

func elefantesIncomodam2(n: Int){
    if n>0{
        print("1 elefante incomoda muita gente")
        if n>1{
            for value in 2...n{
                var musica: String = "elefantes incomodam"
                if value % 2 == 0{
                    for num in 1...value-1{
                        musica = musica + ", incomodam"
                    }
                    print("\(value) " + musica + " muito mais")
                }else{
                    print("\(value) elefantes incomodam muita gente")
                }
            }
        }
    }else{
        print("Sem musica pra voce! Pra ter musica o numero tem que ser maior que 0")
    }
}

elefantesIncomodam(n: 10)
print("------------------")
elefantesIncomodam2(n: 10)

//Escreva uma função chamada "solucaoEquacaoSegundoGrau" que receba três números reais a, b e c como parâmetros e retorne as soluções da equação ax² + bx + c = 0, ou uma mensagem indicando que não há soluções reais.
//Exemplo de entrada: a = 2, b = 5, c = 3
//Saída esperada: (-1.5, -1)
//Dica: A solução da equação do segundo grau pode ser encontrada usando a fórmula de Bhaskara, que é:
//x = (-b ± sqrt(b² - 4ac)) / 2a
//Se o discriminante b² - 4ac for negativo, a equação não tem soluções reais. Se for zero, a equação tem uma solução real. Se for positivo, a equação tem duas soluções reais distintas. É importante lembrar que em Swift, a função sqrt() pode ser usada para calcular a raiz quadrada.

func solucaoEquacaoSegundoGrau(a:Double, b:Double, c:Double) -> [Double]{
    if b*b - (4*a*c) < 0{
        print("Não há soluções reais!")
        return []
    }else if b*b - (4*a*c) == 0{
        return [(-b/(2*a))]
    }else{
        return [(-b + sqrt(b*b - (4*a*c))) / (2*a), (-b - sqrt(b*b - (4*a*c))) / (2*a)]
    }
}

print(solucaoEquacaoSegundoGrau(a: 2, b: 5, c: 3))

//Escreva uma função chamada "fibonacci" que receba um número inteiro positivo n como parâmetro e retorne o n-ésimo número da sequência de Fibonacci. A sequência de Fibonacci começa com os números 0 e 1, e a partir do terceiro número cada número é a soma dos dois números anteriores.
//Exemplo de entrada: 7
//Saída esperada: 8 (pois o sétimo número da sequência de Fibonacci é 8)

func fibonacci(n: Int) -> Int{
    if n<=0 {
        print("Numero inválido!")
        return -1
    }else if n == 1{
        return 0
    }else if n == 2{
        return 1
    }else {
        var a: Int = 0
        var b: Int = 1
        var c: Int = 0
        for value in 3...n{
            c = a + b
            a = b
            b = c
        }
        return c
    }
}

print(fibonacci(n: 30))

//Escreva uma função chamada "somaDosPrimos" que receba um número inteiro como parâmetro e retorne a soma de todos os números primos menores ou iguais a esse número.
//Exemplo de entrada: 10
//Saída esperada: 17 (pois 2 + 3 + 5 + 7 = 17)


func somaDosPrimos(n: Int) -> Int{
    if(n<=1){
        return 0
    }else if (n == 2){
        return 2
    }else{
        var soma: Int  = 2
        for value in 3...n{
            var ePrimo = true
            for value2 in 2 ... (value-1){
                if value%value2 == 0{
                    ePrimo = false
                }
            }
            if ePrimo == true{
                soma = soma + value
                
            }
        }
        return soma
    }
}

print(somaDosPrimos(n: 100))
