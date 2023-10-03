//
//  ProfileView.swift
//  InstagramTutorial
//
//  Created by Dayton Hedges on 9/21/23.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
var posts: [Post] {
        return Post.MOCK_POSTS.filter({$0.user?.username == user.profileImageUrl})
    }
    
    var body: some View {
            ScrollView {
                //header
               ProfileHeaderView(user: user)
                
                //post grid view
               PostGridView(posts: posts)
                    }
        
            .navigationTitle(user.username)
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USERS[0])
    }
}
