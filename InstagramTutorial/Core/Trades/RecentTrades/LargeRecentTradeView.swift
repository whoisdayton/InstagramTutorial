//
//  LargeRecentTradeView.swift
//  InstagramTutorial
//
//  Created by Dayton Hedges on 9/27/23.
//

import SwiftUI

struct LargeRecentTradeView: View {
    var body: some View {
        VStack {
            HStack {
                ProfileIconLeft()
                    .padding(.leading)
                    .padding(.bottom)
                
                Spacer()
                
                Image(systemName: "arrow.up")
                    .resizable()
                    .frame(width: 26, height: 32)
                    .padding(.trailing)
            }
            
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
            
            
            VStack(alignment: .leading) {
                Text("1 photo")
                
                HStack{
                    Rectangle()
                        .foregroundColor(.gray)
                        .frame(width: 140, height: 2)
                    
                    Image(systemName: "arrow.left.arrow.right.square")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .rotationEffect(Angle(degrees:90))
                    
                    Rectangle()
                        .foregroundColor(.gray)
                        .frame(width: 140, height: 2)
                }
                
                Text("1 photo")
            }
            
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
            
            HStack {
                ProfileIconLeft()
                    .padding(.leading)
                .padding(.top)
                
                Spacer()
            }
            Divider().padding(.top)
        }
    }
}

struct LargeRecentTradeView_Previews: PreviewProvider {
    static var previews: some View {
        LargeRecentTradeView()
    }
}
