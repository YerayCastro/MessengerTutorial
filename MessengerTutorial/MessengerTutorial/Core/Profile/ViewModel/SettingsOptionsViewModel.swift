//
//  SettingsOptionsViewModel.swift
//  MessengerTutorial
//
//  Created by Yery Castro on 15/9/23.
//

import SwiftUI

enum SettingsOptionsViewModel: Int, CaseIterable, Identifiable {
    case darkMode
    case activeStatus
    case accesibility
    case privacy
    case notifications
    
    var title: String {
        switch self {
        case .darkMode: return "Dark mode"
        case .activeStatus: return "Active status"
        case .accesibility: return "Accesibility"
        case .privacy: return "Privacy and Safety"
        case .notifications: return "Notifications"
        }
    }
    
    var imageName: String {
        switch self {
        case .darkMode: return "moon.circle.fill"
        case .activeStatus: return "message.badge.circle.fill"
        case .accesibility: return "person.circle.fill"
        case .privacy: return "lock.circle.fill"
        case .notifications: return "bell.circle.fill"
        }
    }
    
    var imageBackgroundColor: Color {
        switch self {
            
        case .darkMode: return .black
        case .activeStatus: return Color(.systemGreen)
        case .accesibility: return .black
        case .privacy: return Color(.systemBlue)
        case .notifications: return Color(.systemPurple)
        }
    }
    
    var id: Int { return rawValue }
}
