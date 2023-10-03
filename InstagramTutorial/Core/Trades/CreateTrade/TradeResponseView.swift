//
//  TradeResponseView.swift
//  InstagramTutorial
//
//  Created by Dayton Hedges on 9/27/23.
//

import SwiftUI

struct TradeResponseView: View {
    var body: some View {
        VStack {
            
            VStack (alignment: .leading){
                HStack {
                    ProfileIconLeft()
                        .padding(.leading)
                        .padding(.bottom)
                    
                    Spacer()
                    
                }
                
                
                Text("Trade message goes here")
                    .padding(.bottom)
                    .padding(.leading)
                
            }
            
            
            
            
            Image("riri")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(10)
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
            
            Image("migos")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(10)
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
                HStack {
                    Image("baby")
                        .resizable()
                        .scaledToFill()
                        .frame(width:50, height: 50)
                    .clipShape(Circle())
                    
                    VStack (alignment: .leading) {
                        Text("Trader 2 name")
                            .font(.title2)
                            .fontWeight(.bold)
                        Text("@Username1")
                    }
                }
                    .padding(.leading)
                    .padding(.top)
                
                Spacer()
            }
            Button {
                print("Trade")
            } label: {
                Text("Trade")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 280, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            .padding(.top)
        }
    }
}

struct TradeResponseView_Previews: PreviewProvider {
    static var previews: some View {
        TradeResponseView()
    }
}
