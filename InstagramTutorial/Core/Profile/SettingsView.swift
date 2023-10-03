//
//  SettingsView.swift
//  InstagramTutorial
//
//  Created by Dayton Hedges on 9/27/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            List{
                Section{
                    
                    HStack {
                        Image("travis-scott")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 72, height: 72)
                            .clipShape(Circle())
                        
                        VStack (alignment: .leading, spacing: 4) {
                            Text("Dayton Hedges")
                                .fontWeight(.semibold)
                                .padding(.top)
                                .padding(.top, 4)
                            
                            Text("@Username")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            
                        }
                    }
                    
                    
                    
                }
                
                Section("General"){
                    HStack {
                        SettingsRowView(imageName: "gear",
                                        title: "Version",
                                        tintColor: Color(.systemGray))
                        
                        Spacer()
                        Text("1.0.0")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    
                }
                
                Section("Account"){
                    
                    Button  {
                        // AuthService.shared.signout()
                    } label: {
                        SettingsRowView(imageName: "arrow.left.circle.fill",
                                        title: "Sign out",
                                        tintColor: .red)
                    }
                    
                    Button  {
                        print ("Delete account..")
                    } label: {
                        SettingsRowView(imageName: "xmark.circle.fill",
                                        title: "Delete account",
                                        tintColor: .red)
                    }
                    
                }
                
            }
        }

    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
