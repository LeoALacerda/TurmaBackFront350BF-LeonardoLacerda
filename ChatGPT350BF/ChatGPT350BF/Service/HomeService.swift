//
//  HomeService.swift
//  ChatGPT350BF
//
//  Created by Leonardo Lacerda on 01/06/23.
//

import UIKit
import OpenAISwift

class HomeService: NSObject {
    
    // Quando trabalhamos de maneira assincrona. Uma funcao funciona de forma assincrona (inicio - ganha vida, meio - exerce o método e fim - morre). O completion: @escaping em uma função ele executa a funcao e não sai da execução ate o completion mandar a funcao morrer. Nesse caso de baixo ele fica na execução da função até ele conseguir resultar a String da API.
    // <String, OpenAIError> É uma "Tupla" Usada para casos de <sucesso, erro>. no exemplo abaixo ou ele retorna a resposta do chatGPT, que é uma String (sucesso), ou um OpenAIError (erro)
    
    func sendMessage(text: String, completion: @escaping (Result<String, OpenAIError>) -> Void){
        OpenAISwift(authToken: "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").sendCompletion(with: text, model: .gpt3(.davinci), maxTokens: 4000) { result in
            DispatchQueue.main.async {
                switch result{
                case .success(let data):
                    var message = data.choices?.first?.text ?? ""
                    completion(.success(message))
                case .failure(let failure):
                    completion(.failure(failure))
                }
            }
        }
    }
}
