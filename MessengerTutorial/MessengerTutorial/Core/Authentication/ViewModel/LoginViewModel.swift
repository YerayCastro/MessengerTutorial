//
//  LoginViewModel.swift
//  MessengerTutorial
//
//  Created by Yery Castro on 16/9/23.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
        
    }
}
