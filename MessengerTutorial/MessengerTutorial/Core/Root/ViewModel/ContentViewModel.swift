//
//  ContentViewModel.swift
//  MessengerTutorial
//
//  Created by Yery Castro on 18/9/23.
//

import Combine
import Firebase

class ContentViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
       setupSubscribers()
    }
    
    
    private func setupSubscribers() {
        AuthService.shared.$userSession.sink { [weak self] userSessionFromAuthService in
            self?.userSession = userSessionFromAuthService
        }.store(in: &cancellables)
    }
}
