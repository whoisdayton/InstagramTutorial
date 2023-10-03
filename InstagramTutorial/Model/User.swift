//
//  User.swift
//  InstagramTutorial
//
//  Created by Dayton Hedges on 9/21/23.
//

import Foundation
import Firebase

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
    
}



extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "rihanna", profileImageUrl: "riri", fullname: "Rihanna idk", bio: "slay queen", email: "riri@gmail.com"),
        .init(id: NSUUID().uuidString, username: "baby", profileImageUrl: "baby", fullname: "lil baby", bio: "4pf", email: "baby4pf@gmail.com"),
        .init(id: NSUUID().uuidString, username: "future", profileImageUrl: "future", fullname: "Future Pluto", bio: "WZRD", email: "plutowzrd@gmail.com"),
        .init(id: NSUUID().uuidString, username: "blpk", profileImageUrl: "blp-kosher", fullname: "BLP Kosher", bio: "wadana", email: "blpk@gmail.com"),
        .init(id: NSUUID().uuidString, username: "djb", profileImageUrl: "dj-boring", fullname: "DJ Boring", bio: "DJ", email: "djb@gmail.com"),
    ]
}
