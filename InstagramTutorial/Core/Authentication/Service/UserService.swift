//
//  UserService.swift
//  InstagramTutorial
//
//  Created by Dayton Hedges on 10/1/23.
//

import Foundation
import Firebase

struct UserService {
    
    //getting users from firestore
    

    static func fetchAllUsers() async throws -> [User] {
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        return snapshot.documents.compactMap({try? $0.data(as: User.self) })
    }
}
