//
//  ProfileIconLeft.swift
//  InstagramTutorial
//
//  Created by Dayton Hedges on 9/27/23.
//

import SwiftUI

struct ProfileIconLeft: View {
    var body: some View {
        HStack {
            Image("travis-scott")
                .resizable()
                .scaledToFill()
                .frame(width:50, height: 50)
            .clipShape(Circle())
            
            VStack (alignment: .leading) {
                Text("Trader 1 name")
                    .font(.title2)
                    .fontWeight(.bold)
                Text("@Username")
            }
        }    }
}

struct ProfileIconLeft_Previews: PreviewProvider {
    static var previews: some View {
        ProfileIconLeft()
    }
}
