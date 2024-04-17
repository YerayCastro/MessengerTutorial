//
//  Route.swift
//  MessengerTutorial
//
//  Created by Yery Castro on 19/9/23.
//

import Foundation

enum Route: Hashable {
    case profile(User)
    case chatView(User)
}
