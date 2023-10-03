//
//  EditProfileViewModel.swift
//  InstagramTutorial
//
//  Created by Dayton Hedges on 10/2/23.
//

import Foundation
import PhotosUI
import Firebase
import SwiftUI

@MainActor
class EditProfileViewModel: ObservableObject {
    @Published var user: User
    @Published var selectedImage: PhotosPickerItem? {
        didSet { Task {await loadImage(fromItem: selectedImage)} }
    }
    @Published var profileImage: Image?
    
    @Published var fullname = ""
    @Published var bio = ""
    
    private var uiImage: UIImage?
    
    init(user:User) {
        self.user = user
    }
    
    func loadImage(fromItem item: PhotosPickerItem?) async {
        guard let item = item else {return}
        guard let data = try? await item.loadTransferable(type: Data.self) else {return}
        guard let uiImage = UIImage(data: data) else {return}
        self.uiImage = uiImage
        self.profileImage = Image(uiImage:uiImage)
    }
    
    func updateUserData() async throws {
        
        
        
        //update profile image if changed
        
        var data = [String: Any]()
        
        if let uiImage = uiImage {
            let imageURL = try? await ImageUploader.uploadImage(image: uiImage)
            data["profileImageURL"] = imageURL
        }
        
        
        //update name if changed
        if !fullname.isEmpty && user.fullname != fullname {
            data["fullname"] = fullname
        }
        
            //checking to see if changes
            
            
            //update bio if changed
        if !bio.isEmpty && user.bio != bio {
            data["bio"] = bio
        }
        
        if !data.isEmpty {
            try await Firestore.firestore().collection("users").document(user.id).updateData(data)
        }
        
    }
    
}
