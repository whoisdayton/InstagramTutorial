//
//  Post.swift
//  InstagramTutorial
//
//  Created by Dayton Hedges on 9/21/23.
//

import Foundation


struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "test caption", likes: 4, imageUrl: "thugger", timestamp: Date()),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "test caption1", likes: 5, imageUrl: "ferg", timestamp: Date()),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "test caption2", likes: 6, imageUrl: "dio-brando", timestamp: Date()),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "test caption3", likes: 7, imageUrl: "migos", timestamp: Date()),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "test caption4", likes: 8, imageUrl: "keef", timestamp: Date())
    ]
}
