//
//  HomeViewModel.swift
//  ChatGPT350BF
//
//  Created by Leonardo Lacerda on 30/05/23.
//

import UIKit

class HomeViewModel: NSObject {
    
    private var messageList: [Message] = [Message(message: "Oi, tudo bem?", typeMessage: .user),
                                          Message(message: "Ola, tudo ótimo!", typeMessage: .chatGPT),
    ]
    
    var numberOfRowsInSection: Int{
        return messageList.count
    }
    
    func loadCurrentMessage(indexPath: IndexPath) -> Message{
        return messageList[indexPath.row]
    }
    
    func heightForRowAt(indexPath: IndexPath) -> CGFloat{
        return messageList[indexPath.row].message.heightwithConstrainedwidth(width: 220, font: UIFont(name: "HelveticaNeue-Medium", size: 16) ?? UIFont()) + (10 + 15 + 15 + 5)
    }
    
    func addMessage(message: String, type: TypeMessage = .user){
//        messageList.append(message)
        messageList.insert(Message(message: message.trimmingCharacters(in: .whitespacesAndNewlines), typeMessage: type), at: .zero)
    }
}
