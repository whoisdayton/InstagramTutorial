//
//  ProfileIconRight.swift
//  InstagramTutorial
//
//  Created by Dayton Hedges on 9/27/23.
//

import SwiftUI

struct ProfileIconRight: View {
    var body: some View {
        HStack {
            VStack {
                Text("Trader 2 name")
                    .font(.title2)
                    .fontWeight(.bold)
                Text("@username1")
            }
            Image("baby")
                .resizable()
                .scaledToFill()
                .frame(width:50, height: 50)
            .clipShape(Circle())
        }
    }
}

struct ProfileIconRight_Previews: PreviewProvider {
    static var previews: some View {
        ProfileIconRight()
    }
}
