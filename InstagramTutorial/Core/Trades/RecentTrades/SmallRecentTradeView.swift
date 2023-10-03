//
//  SmallRecentTradeView.swift
//  InstagramTutorial
//
//  Created by Dayton Hedges on 9/27/23.
//

import SwiftUI

struct SmallRecentTradeView: View {
    var body: some View {
        VStack {
            HStack {
                ProfileIconLeft()
                Spacer()
                Text("1 photo")
                    .font(.footnote)
            }
            .padding(.horizontal)
            .padding(.bottom, 20)
            
            HStack {
                Image("riri")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 150)
                    .clipped()
                    .cornerRadius(10)
                    .blur(radius: 2)
                    .overlay(content: {
                        HStack {
                            VStack (alignment: .leading){
                                Image(systemName: "camera")
                                    .foregroundColor(.white)
                                Spacer()
                                Image("logo1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 15, height: 15)
                                    .padding(.leading, 4)
                            }
                            .padding(.vertical, 8)
                            Spacer()
                        }.padding(.leading, 8)
                    })
                
                Image(systemName: "arrow.left.arrow.right.square")
                    .frame(width: 25, height: 25)
                
                Image("thugger")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 150)
                    .clipped()
                    .cornerRadius(10)
                    .blur(radius: 2)
                    .overlay(content: {
                        HStack {
                            VStack (alignment: .leading){
                                Image(systemName: "camera")
                                    .foregroundColor(.white)
                                Spacer()
                                Image("logo1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 15, height: 15)
                                    .padding(.leading, 4)
                            }
                            .padding(.vertical, 8)
                            Spacer()
                        }.padding(.leading, 8)
                    })
                
            }
            
            HStack{
                Text("1 photo")
                    .font(.footnote)
                
                Spacer()
                
                ProfileIconRight()
            }
            .padding(.horizontal)
            .padding(.top, 20)
            
            Divider()
                .padding(.top)
            
        }
    }
}

struct SmallRecentTradeView_Previews: PreviewProvider {
    static var previews: some View {
        SmallRecentTradeView()
    }
}
