//
//  Constants.swift
//  MessengerTutorial
//
//  Created by Yery Castro on 18/9/23.
//

import Foundation
import Firebase

struct FirestoreConstants {
    
    static let UserCollection = Firestore.firestore().collection("users")
    static let MessagesCollection = Firestore.firestore().collection("messages")
}
