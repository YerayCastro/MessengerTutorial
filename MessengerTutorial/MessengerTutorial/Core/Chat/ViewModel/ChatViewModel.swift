//
//  ChatViewModel.swift
//  MessengerTutorial
//
//  Created by Yery Castro on 18/9/23.
//

import Foundation

class ChatViewModel: ObservableObject {
    @Published var messageText = ""
    @Published var messages = [Message]()
    
    let service: ChatService
    
    init(user: User) {
        self.service = ChatService(chatPartner: user)
        observeMessages()
    }
    
    func observeMessages() {
        service.observeMessages() { messages in
            self.messages.append(contentsOf: messages)
        }
    }
    
    func sendMessage() {
        service.sendMessage(messageText)
    }
}
