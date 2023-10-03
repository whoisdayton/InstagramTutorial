//
//  CurrentUserProfileView.swift
//  InstagramTutorial
//
//  Created by Dayton Hedges on 9/21/23.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    let user: User
  
    var posts: [Post] {
            return Post.MOCK_POSTS.filter({$0.user?.username == user.profileImageUrl})
        }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                //header
               ProfileHeaderView(user: user)
                
                //post grid view
                PostGridView(posts: posts)
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                       SettingsView()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }

                }
            }
        }
    }
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView(user: User.MOCK_USERS[0])
    }
}
