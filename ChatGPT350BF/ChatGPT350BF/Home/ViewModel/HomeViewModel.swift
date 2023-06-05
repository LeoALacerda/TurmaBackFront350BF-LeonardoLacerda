//
//  HomeViewModel.swift
//  ChatGPT350BF
//
//  Created by Leonardo Lacerda on 30/05/23.
//

import UIKit

protocol HomeViewModelProtocol: AnyObject {
    func reloadTableView()
}

class HomeViewModel: NSObject {
    
    private var messageList: [Message] = []
    private var service: HomeService = HomeService()
    
    private weak var delegate: HomeViewModelProtocol?
    
    public func delegate (delegate: HomeViewModelProtocol){
        self.delegate = delegate
    }
    
    var numberOfRowsInSection: Int{
        return messageList.count
    }
    
    func configProtocol(delegate: HomeViewModelProtocol){
        
    }
    
    func loadCurrentMessage(indexPath: IndexPath) -> Message{
        return messageList[indexPath.row]
    }
    
    func heightForRowAt(indexPath: IndexPath) -> CGFloat{
        return messageList[indexPath.row].message.heightwithConstrainedwidth(width: 220, font: UIFont(name: "HelveticaNeue-Medium", size: 16) ?? UIFont()) + (10 + 15 + 15 + 5)
    }
    
    public func addMessage(message: String, type: TypeMessage = .user){
//        messageList.append(message)
        messageList.insert(Message(message: message.trimmingCharacters(in: .whitespacesAndNewlines), typeMessage: type), at: .zero)
    }
    
    public func fetchMessage(message: String){
        addMessage(message: message)
        service.sendMessage(text: message) { result in
            switch result {
            case .success(let success):
                self.addMessage(message: success, type: .chatGPT)
            case .failure(let failure):
                self.addMessage(message: failure.localizedDescription, type: .chatGPT)
            }
            self.delegate?.reloadTableView()
        }
    }
}
