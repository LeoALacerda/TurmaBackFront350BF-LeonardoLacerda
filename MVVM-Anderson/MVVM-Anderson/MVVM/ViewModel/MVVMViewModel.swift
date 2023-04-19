//
//  MVVMViewModel.swift
//  MVVM-Anderson
//
//  Created by Leonardo Lacerda on 18/04/23.
//

import Foundation

class MVVMViewModel{
    
    private var sfSymbols: [SFSymbol] = []
    
    func setNewSFSymbol(name: String){
        sfSymbols.append(SFSymbol(name: name))
    }
    
    func clearSFSymbols(){
        sfSymbols.removeAll()
    }
    
    // VARIAVEL COMPUTADA!
    //mesma coisa que criar uma funçao func numberofrowsinsection() -> Int {return sfSymbols.count} que retorna o valor. Nesse caso da variavel computada, é criada uma variavel que retorna o valor dela, voce nao consegue alterar o valor dela.
    var numberOfRowsInSection: Int {
        return sfSymbols.count
    }
    
    func getSFSymbol(index: Int) -> SFSymbol{
        return sfSymbols[index]
    }
    
    // outra variavel computada
    var heighForRowAt: CGFloat{
        113
    }
}
